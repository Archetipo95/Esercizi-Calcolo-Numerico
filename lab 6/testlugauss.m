clc;
clear;

A = [2  1  0 ;  1 2  1 ; 0  1  2];
n=size(A,1);
%b = A*ones(n,1);
b = [3,4,3]';
[L,U]=lugauss(A);
y=L\b;
%y=ForwSolv(L,b,n)';
%x=U\y;
x=BackSolv(U,y,n)';
