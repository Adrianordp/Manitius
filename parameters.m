% Author: Adriano Rodrigues
% 
% InitCallback function for Example_2.1.slx and parameter definition for
% example 2.1 from Manitius 1979
% 
% !! To run this model, the step size must be VERY SMALL!!

% Clear cache
clc, clear all, close all

% Laplace variable
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
     0];

% Controller gain
F = [-4*exp(h)+1  -4*exp(h)];