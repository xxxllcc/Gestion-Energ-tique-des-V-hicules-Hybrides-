clear all;
close all
clc;

% Chargement des paramètres du modèle
Batteries;
MachineElectrique;
BoiteVitesse;

% Lancement de la simulation
sim('TestModeleBoiteVitesse',10);

% Calcul de quelques données pertinentes

% Puissance prélevée sur les batteries
Pelec=Ubatt.*Ibatt;


% Affichage des données
figure;
subplot(2,1,1);
plot(t,Ibatt,'r');
hold on;
plot(t,Ubatt,'b');
legend('Ubatt','Ibatt');
xlabel('Temps(s)');
grid on;

subplot(2,1,2);
plot(t,ConsCe,t,Ce,'r');

legend('ConsCe','Ce');
grid on;

figure;
plot(t,Soc,'r');
grid on;
legend('Soc');

figure;
plot(t,PertesBatt,'r');
grid on;
xlabel('Temps(s)');
ylabel('PertesBatt (W)');

figure; 
Pertes=[PertesBatt PertesMe PertesBV];
area(t,Pertes); 
legend('PertesBatt','PertesMe','PertesBV'); 

