% Caractéristiques des batteries ESS_NIMH28_OVONIC.m 
% source: logiciel Advisor

% ESS  : Energy Storage System

% Etat de charge initial des batteries
SocInit=0.8;

% Capacité (A*h), max. capacity at C/5 rate, indexed by ess_tmp
ess_max_ah_cap=28;

% "Absisse" des cartographies : Etat de charge
ess_soc=[0:.1:1];  


% Rendement coulombique 
ess_coulombic_eff=0.99;

% Résistance = f(Soc)
ess_r=[0.01266 0.00685	0.00644	0.00599	0.00587	0.00575	0.00568	0.00581	0.00623	0.00667  0.00635]; % (ohm)

% Tension à vide=f(Soc)
ess_voc=[12.5 12.8 13.1 13.3 13.4 13.4 13.5 13.6 13.7 13.9 14.2];

% Limites conseillées d'utilisation
ess_min_volts=0.87*1.05*5; % (V), 0.87*105% safety factor volts time 5 cells
ess_max_volts=1.65*0.95*5;% (V), 1.65*95% safety factor volts times 5 cells

% Caractéristiques d'une batterie
ess_module_mass=3.6;  % (kg), mass of a single
ess_module_volume=0.195*0.102*0.81; % (m^3), length X width X height
ess_module_number=20;

ess_tau=0.1; % (s) dynamics of the transfert from current to voltage (irrealistic, but only for simulation purpose)

% ADVISOR data file:  ESS_NIMH28_OVONIC.m 
%
% Data source:
% Dennis Corrigan, Vice President of EV Battery Systems, Ovonic
%
% Data confirmation:
% Data provided by manufacturer.
%
% Notes: These are designed to be a high power, intermediate energy battery.
% Cell type = M70
% Nominal Voltage = 6V
% Nominal Capacity (C/3) = 28Ah
% Dimensions (L * W * H) = 195mm X 102mm X 81mm
% Weight = 3.6kg
% Volume (modules only) = 1.6L
% Nominal Energy (C/3) = 175 Wh
% Peak Power (10s pulse @ 50%DOD @ 35 deg. C) = 1.6kW
% 
% Created on: 4/7/00
% By:  TM, NREL, tony_markel@nrel.gov
%
% Revision history at end of file.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
