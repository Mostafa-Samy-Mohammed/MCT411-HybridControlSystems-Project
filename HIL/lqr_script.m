%% Rotary Inverted Pendulum (Upright) - A, B (Vm), and LQR Gain
% State: x = [theta; alpha; theta_dot; alpha_dot]
% Conventions: CCW positive for theta and alpha, alpha = 0 at upright.

clc; clear; close all;

%% Motor Parameters
Ra = 9.860877690420080;     % Ohm
Kt = 1.273856488328520;     % N*m/A
Kb = 0.568585930410702;     % V/(rad/s)
Kg = 1;                     % Gear ratio
eta_g = 1;                  % Gear efficiency (already inside kt per your note)
eta_m = 1;                  % Motor efficiency

%% Physical Parameters
mp = 0.007113885748818485;  % kg
Lp = 66/1000;               % m (total length)
Lr = 0.012;                 % m
Jp = 0.0000052777;          % kg*m^2 (about CM)
Jr = 0.0000379439;          % kg*m^2
Br = 0.00182;               % N*m*s/rad
Bp = 7.7e-5;                % N*m*s/rad
g  = 9.81;                  % m/s^2

%% ===== Linearized model about upright (alpha ~ 0) with TORQUE input =====
% From workbook EOM (linearize sin(alpha)~alpha, cos(alpha)~1, drop products)
% M * [theta_ddot; alpha_ddot] = [ tau - Br*theta_dot ;
%                                 +0.5*mp*Lp*g*alpha - Bp*alpha_dot ]
%
% where:
Jr_t = Jr + mp*Lr^2;                 % effective arm inertia term at alpha=0
Jp_t = Jp + 0.25*mp*Lp^2;            % effective pendulum inertia term
Jx   = 0.5*mp*Lp*Lr;                 % coupling term

detM = Jr_t*Jp_t - (Jx^2);

% A,B for torque input u = tau
A_tau = zeros(4,4);
B_tau = zeros(4,1);

A_tau(1,3) = 1;
A_tau(2,4) = 1;

% theta_ddot = (1/detM)*( Jp_t*(tau - Br*theta_dot) + Jx*(0.5*mp*Lp*g*alpha - Bp*alpha_dot) )
A_tau(3,2) = (Jx * (0.5*mp*Lp*g)) / detM;   % alpha term
A_tau(3,3) = -(Jp_t * Br) / detM;           % theta_dot term
A_tau(3,4) = -(Jx   * Bp) / detM;           % alpha_dot term
B_tau(3)   = (Jp_t) / detM;                 % tau term

% alpha_ddot = (1/detM)*( Jx*(tau - Br*theta_dot) + Jr_t*(0.5*mp*Lp*g*alpha - Bp*alpha_dot) )
A_tau(4,2) = (Jr_t * (0.5*mp*Lp*g)) / detM; % alpha term
A_tau(4,3) = -(Jx   * Br) / detM;           % theta_dot term
A_tau(4,4) = -(Jr_t * Bp) / detM;           % alpha_dot term
B_tau(4)   = (Jx) / detM;                   % tau term

%% ===== Convert TORQUE input to VOLTAGE input Vm (workbook Eq. 2.4 style) =====
% tau = (eta_g*Kg*eta_m*kt/Rm)*Vm - (eta_g*Kg^2*eta_m*kt*km/Rm)*theta_dot
KtVm = (eta_g*Kg*eta_m*Kt)/Ra;           % tau per Vm
Kbemf = (eta_g*(Kg^2)*eta_m*Kt*Kb)/Ra;   % tau per theta_dot (back-emf term)

A = A_tau;
B = B_tau;

% Add back-emf term into A via the same pattern used in workbook snippet:
A(3,3) = A(3,3) - Kbemf * B(3);
A(4,3) = A(4,3) - Kbemf * B(4);

% Scale B to convert input from tau to Vm:
B = KtVm * B;

% Output matrices (if you need them)
C = [1 0 0 0;
     0 1 0 0];
D = [0;0];

%% Display A, B
disp('A (Vm input) ='); disp(A);
disp('B (Vm input) ='); disp(B);

%% ===== LQR design =====
% Tune Q and R as you like (start here, then adjust).
Q = diag([ 1e-5,  2000,   0.3,  0.05 ]);   % [theta, alpha, theta_dot, alpha_dot]
R = 0.3;                                % voltage effort penalty

% MATLAB returns K_lqr for u = -K_lqr*x
K_lqr = lqr(A,B,Q,R);

% If you implement u = K*(xd - x), use:
K_use = -K_lqr;

disp('K_lqr (for u = -K_lqr*x) ='); disp(K_lqr);
disp('K_use (for u =  K_use*(xd - x)) ='); disp(K_use);

% Quick sign check (you wanted [+ - + -] on K_use):
disp('sign(K_use) ='); disp(sign(K_use));
