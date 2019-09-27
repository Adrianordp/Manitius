% Author: Adriano Rodrigues
% 
% InitCallback function for Example_2.1.slx and parameter definition for
% example 2.1 from Manitius 1979
% 
% !! To run this model, the step size must be VERY SMALL!!

% Clear cache
clc, clear all, close all

<<<<<<< HEAD
h = 1;
Ts = 0.01;
Tsim = 10;
=======
% Laplace variable
>>>>>>> 12385789052a5d467a0ef56c3f0c464562789638
s = tf('s');

% Simulation time [s]
Tsim = 15;

% Initial conditions
IC = [.1  0];

% Delay [s]
h = 1;

% Dynamic matrix
A = [0 0
     1 1];

% Input matrix
B = [1
<<<<<<< HEAD
     1];
BA = [1
      exp(-h)-1]
I = eye(size(A));

S = inv(s*I-A);
S(1,1) = 1/s;
S(1,2) = 0;
S(2,1) = 1/s/(s-1);
S(2,2) = 1/(s-1);

% G = (s*I-A)\B*exp(-s*h)
% step(G,Tsim)
=======
     0];

% Controller gain
F = [-4*exp(h)+1  -4*exp(h)];
>>>>>>> 12385789052a5d467a0ef56c3f0c464562789638
