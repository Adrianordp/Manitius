% parameters.m
% Parameter for example 2.1 from Manitius 1979
clc, clear all, close all

h = 1;
Ts = 0.01;
Tsim = 15;
s = tf('s');
A = [0 0
     1 1];
% A = [-10   0
%        1 -10];
% F = [(18-81*h)*exp(-10*h) -81*exp(-10*h)];
F = [-4*exp(h)+1  -4*exp(h)];
B = [1
     0];
% BA = [1
%       exp(-h)-1];
I = eye(size(A));
IC = [0 0];

S = inv(s*I-A);
S(1,1) = 1/s;
S(1,2) = 0;
S(2,1) = 1/s/(s-1);
S(2,2) = 1/(s-1);

% G = (s*I-A)\B*exp(-s*h)
% step(G,Tsim)
% %%
% clc
% syms h theta lambda f1 f2
% F = [-4*exp(h)+1  -4*exp(h)];
% e1 = expm(-h*A);
% e2 = expm(-theta*A);
% B1 = [1
%       0];
% BA = e1*B1;
% R = F*e1*e2*B1;
% simplify(R);
% 
% R2 = det(lambda*eye(2)-A-BA*[f1 f2]);
% collect(simplify(R2))