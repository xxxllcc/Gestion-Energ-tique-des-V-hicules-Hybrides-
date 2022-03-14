% Vehicule

veh_mass    = 1500;  % (kg) : masse du véhicule
veh_r       = 0.29;  % (m)  : rayon des roues
veh_Jw      = 0.55;  % (kgm²) : inertie des roues 


veh_S       = 3;        %m2 surface maître couple
veh_cx      = 0.35; 	%coefficient de cx
veh_rho     = 1.2;      % densité de l'air % kg/m^3


%%%%%%%%%%%%
veh_rr_alpha = -0.4745; % Example tire parameters
veh_rr_beta = 0.9552;
veh_A = 0.15;
veh_B = 4.87e-04;
veh_C = 1.18e-06;
veh_wpressure = 240; %(kPa) Tire inflation pressure 
veh_gravity=9.81;    % m/s^2

%Rolling resistance coefficients are measured on a roadwheel
%Flat surface values will differ from curved surface values
%Adjustments are made using SAE J2452 Eq. 22
% Fr=P^alpha*Z^beta*(a + b*V + c*V^2)
%Fr = rolling resistance force (N)
%P = Tire Pressure (kPa)
%Z= Load on tire (N)
%V = velocity (m/s)
