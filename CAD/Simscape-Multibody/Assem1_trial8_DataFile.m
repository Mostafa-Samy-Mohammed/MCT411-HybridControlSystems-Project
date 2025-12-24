% Simscape(TM) Multibody(TM) version: 24.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(13).translation = [0.0 0.0 0.0];
smiData.RigidTransform(13).angle = 0.0;
smiData.RigidTransform(13).axis = [0.0 0.0 0.0];
smiData.RigidTransform(13).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [31.788306961597034 6 -31.851272196178464];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = "B[base_plate-1:-:dcMotor_plate-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-31.819805153393691 -70.000000000000014 31.819805153391961];  % mm
smiData.RigidTransform(2).angle = 2.0938239643192125;  % rad
smiData.RigidTransform(2).axis = [0.57773109070328899 0.5771597642051931 -0.5771597642051931];
smiData.RigidTransform(2).ID = "F[base_plate-1:-:dcMotor_plate-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 0];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = "B[orange_encoder_600ppr v1-1:-:arm_v2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-18.999999999999975 32.848405670630257 8.4295877515916627e-15];  % mm
smiData.RigidTransform(4).angle = 2.1131843420687471;  % rad
smiData.RigidTransform(4).axis = [-0.5834799896091073 0.56489132003555531 -0.58347998960910719];
smiData.RigidTransform(4).ID = "F[orange_encoder_600ppr v1-1:-:arm_v2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 3.0000000000000027 0];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(5).ID = "B[dcMotor_plate-1:-:Flexible_coupler_motor-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [24.000000000000021 7.1054273576010019e-15 7.1054273576010019e-15];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(6).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(6).ID = "F[dcMotor_plate-1:-:Flexible_coupler_motor-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-7.9999999999999929 0 0];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(7).ID = "B[Flexible_coupler_motor-1:-:arm_v2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-3.5527136788005009e-15 -10.000000000000057 -1.8437686435023932e-15];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(8).axis = [0.57735026918962584 -0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(8).ID = "F[Flexible_coupler_motor-1:-:arm_v2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-54 32.848405670630328 0];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(9).ID = "B[arm_v2-1:-:Rigid_coupler_pendulum-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [29.99999999999973 5.6843418860808015e-14 -2.0711429961496746e-14];  % mm
smiData.RigidTransform(10).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(10).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(10).ID = "F[arm_v2-1:-:Rigid_coupler_pendulum-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 17.999999999999989];  % mm
smiData.RigidTransform(11).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(11).axis = [1 0 0];
smiData.RigidTransform(11).ID = "B[Pendulum-1:-:Rigid_coupler_pendulum-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [1.9999999999999858 5.6843418860808015e-14 1.0130785099705276e-14];  % mm
smiData.RigidTransform(12).angle = 3.1415926535897887;  % rad
smiData.RigidTransform(12).axis = [0.70710678118654757 -2.520840470884915e-15 -0.70710678118654757];
smiData.RigidTransform(12).ID = "F[Pendulum-1:-:Rigid_coupler_pendulum-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 0];  % mm
smiData.RigidTransform(13).angle = 0;  % rad
smiData.RigidTransform(13).axis = [0 0 0];
smiData.RigidTransform(13).ID = "RootGround[base_plate-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(7).mass = 0.0;
smiData.Solid(7).CoM = [0.0 0.0 0.0];
smiData.Solid(7).MoI = [0.0 0.0 0.0];
smiData.Solid(7).PoI = [0.0 0.0 0.0];
smiData.Solid(7).color = [0.0 0.0 0.0];
smiData.Solid(7).opacity = 0.0;
smiData.Solid(7).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.22846016033183092;  % kg
smiData.Solid(1).CoM = [-138.42056495448389 3 8.4605030418397404e-13];  % mm
smiData.Solid(1).MoI = [523.50713874135022 2399.9808199832078 1877.8444422038481];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "base_plate*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.032848162245534662;  % kg
smiData.Solid(2).CoM = [6.9999205650622116 -0.019094024297924204 -0.10446418016286182];  % mm
smiData.Solid(2).MoI = [2.8200523672838926 3.9267841777025105 3.9319990750742924];  % kg*mm^2
smiData.Solid(2).PoI = [-0.0077545294146812993 2.495741482128809e-05 -0.007322483196650873];  % kg*mm^2
smiData.Solid(2).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Flexible_coupler_motor*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.026006496685497728;  % kg
smiData.Solid(3).CoM = [0 1.5 1.4534829683956443];  % mm
smiData.Solid(3).MoI = [20.503595796879946 40.915044569147597 20.450458517295893];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "dcMotor_plate*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.041960570804928661;  % kg
smiData.Solid(4).CoM = [-27.323268405258958 10.385156127645301 1.2857818036776521e-05];  % mm
smiData.Solid(4).MoI = [13.828328289329063 36.307435492144201 37.943893182224095];  % kg*mm^2
smiData.Solid(4).PoI = [1.4123514385996784e-06 -1.6844107204559398e-05 6.4321752752699082];  % kg*mm^2
smiData.Solid(4).color = [0.69803921568627447 0.69803921568627447 0.69803921568627447];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "arm_v2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.064849999999999991;  % kg
smiData.Solid(5).CoM = [6.9999205650622116 -0.019094024297924204 -0.10446418016286182];  % mm
smiData.Solid(5).MoI = [5.5674468072630434 7.7523957663301184 7.7626912005779216];  % kg*mm^2
smiData.Solid(5).PoI = [-0.015309265364166397 4.9271808238847448e-05 -0.014456304488308513];  % kg*mm^2
smiData.Solid(5).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Rigid_coupler_pendulum*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.007113885748818485;  % kg
smiData.Solid(6).CoM = [-8.126404891497831e-05 -21.860294018889288 0.78939362763541221];  % mm
smiData.Solid(6).MoI = [5.2776879857556498 0.18106256450946631 5.2777409149479348];  % kg*mm^2
smiData.Solid(6).PoI = [-0.122809320424353 -1.9383697913233342e-06 -1.2201128507513359e-05];  % kg*mm^2
smiData.Solid(6).color = [0.69803921568627447 0.69803921568627447 0.69803921568627447];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "Pendulum*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.15546000000000001;  % kg
smiData.Solid(7).CoM = [-0.12140172622638438 -0.00075171961470254264 18.410886759933351];  % mm
smiData.Solid(7).MoI = [31.745756494210571 32.194898052031654 27.28198647860496];  % kg*mm^2
smiData.Solid(7).PoI = [0.0042568241088518288 -0.15736948462193021 0.00014469470012794402];  % kg*mm^2
smiData.Solid(7).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "orange_encoder_600ppr v1*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 0.056688637294823999;  % deg
smiData.RevoluteJoint(1).ID = "[dcMotor_plate-1:-:Flexible_coupler_motor-1]";

smiData.RevoluteJoint(2).Rz.Pos = 5.5088823045458568e-15;  % deg
smiData.RevoluteJoint(2).ID = "[arm_v2-1:-:Rigid_coupler_pendulum-1]";

