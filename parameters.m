% parameters.m
% Parameter for example 2.1 from Manitius 1979
% 
% To run this model, the step-size must be very small!

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