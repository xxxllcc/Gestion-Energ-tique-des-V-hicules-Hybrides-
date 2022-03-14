% Machine electrique : MC_PM32
% Source  : logiciel advisor

mc_inertia=0.0226; % (kg*m^2), rotor's rotational inertia																		
mc_mass=23.6+14.5; % (kg), mass of motor and controller


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SPEED & TORQUE RANGES over which data is defined
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Couple : (N*m), torque range of the motor
mc_map_trq=[-520 -480 -400 -320 -240 -200 -160 -120 -80 -40 ...
   0 40 80 120 160 200 240 320 400 480 520]*4.448/3.281/12;

% Régime : (rad/s), speed range of the motor
mc_map_spd=[0 500 1000 1500 2000 2500 3000 4000 5000 6000 7000]*(2*pi)/60;

mc_max_spd=max(mc_map_spd);
mc_max_spd=min(mc_map_spd);

% Rendement
mc_eff_map = 0.01*[...
20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20	20
43	43	45	52	60	60	57	52	49	38	20	38	49	52	57	60	60	52	45	43	43
70	70	71	72	73	72.5	71.5	67	62	50	20	50	62	67	71.5	72.5	73	72	71	70	70
76.7	76.7	77.5	77.5	77	76.5	74	71	65	52	20	52	65	71	74	76.5	77	77.5	77.5	76.7	76.7
80.8	80.8	80.5	80	78	78.5	77	73	67	54	20	54	67	73	77	78.5	78	80	80.5	80.8	80.8
83	83	83.5	83	82	81	78.5	76	70	58	20	58	70	76	78.5	81	82	83	83.5	83	83
84.6	84.6	84.7	84.5	83.5	82.5	80	77	72	59	20	59	72	77	80	82.5	83.5	84.5	84.7	84.6	84.6
86.8	86.8	86.6	86.5	85.4	84.5	83	80.5	75.5	60	20	60	75.5	80.5	83	84.5	85.4	86.5	86.6	86.8	86.8
88.7	88.7	88.8	88.3	86.7	86	84	81.5	77	60	20	60	77	81.5	84	86	86.7	88.3	88.8	88.7	88.7
91	91	90.5	89.7	88.4	87	86	83	77.5	55	20	55	77.5	83	86	87	88.4	89.7	90.5	91	91
92	92	91.5	90.5	89.3	88.5	87	84	76	50	20	50	76	84	87	88.5	89.3	90.5	91.5	92	92
];      



% LIMITES
% maximum continuous torque corresponding to speeds in mc_map_spd
mc_max_trq=[512 508.1 504.2 500.3 496.3	492.4 488.5 480.7 472.8 465 0]...
   *4.448/3.281/12; % (N*m)
mc_min_trq=-1*[512 508.1 504.2 500.3 496.3	492.4 488.5 480.7 472.8 465 0]...
   *4.448/3.281/12; % (N*m), estimate



%%%%% ADVISOR data file:  MC_PM32
%
% Data source:
% Unique Mobility specification sheet for the SR180p/CR20-300
% motor/controller combination at 195 V, dated 10/28/94
%
% Data confidence level:
%
% Notes:
% Efficiency/loss data appropriate to a 195-V system.
%
% Created on: 6/30/98
% By: MRC, NREL, matthew_cuddy@nrel.gov
%
% Revision history at end of file.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
