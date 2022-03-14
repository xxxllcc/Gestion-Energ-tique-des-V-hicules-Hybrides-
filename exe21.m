clear all;
close all
clc;

% Chargement des paramètres du modèle
Batteries;

% Lancement de la simulation
sim('TestModeleBatteries',10);

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
plot(t,Pelec,'r');
legend('Pelec');
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

