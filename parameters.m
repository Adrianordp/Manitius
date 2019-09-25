% parameters.m
% Parameter for example 2.1 from Manitius 1979
clc, clear all, close all

h = 1;
Ts = 0.01;
Tsim = 10;
s = tf('s');
A = [0 0
     1 1];
% A = [-1 0
%      0 -1];
F = [-4*exp(h)+1  -4*exp(h)];
B = [1
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
