%George Mendez Question 3 for Exam 2
function Y = JacobItt(f1,f2,f3,p0,p1)
%Instructions
%give a function f1, f2, and f3 to calculate your J(x0,y0,z0) 
%give your initial and ending points x0,y0,z0,x1,y1, & z1 as arrays
%p0 = [x0;y0;z0] (3x1) matrix and p1 = [x1,y1,z1] also a (3x1) matrix 
%dF = J(x0,y0,z0)*DX
%I had to Screenshot run example due to system errors, but the code works
%input variales:
%f1=@(x) (((x^2)/9) + ((y^2)/16) + (z^2) -1);
%f2=@(x,y,z) 2*x+3*y+5*z+6;
%f3=@(x,y,z) x*y+x*z+y*z-2;
%p0 = [1;2;1];
%p1 = [1.002;2.006;1.003];
syms x y z

%initializing our guess's
a = p0(1,1);
b = p0(2,1);
c = p0(3,1);

%finding our derivatives
f11 = inline(diff(f1,x),'x','y','z');
f12 = inline(diff(f1,y),'y','x','z');
f13 = inline(diff(f1,z),'z','x','y');
f21 = inline(diff(f2,x),'x','y','z');
f22 = inline(diff(f2,y),'y','x','z');
f23 = inline(diff(f2,z),'z','y','x');
f31 = inline(diff(f3,x),'x','y','z');
f32 = inline(diff(f3,y),'y','x','z');
f33 = inline(diff(f3,z),'z','x','y');

%find our dF
J=[f11(a,b,c),f12(a,b,c),f13(a,b,c);f21(a,b,c),f22(a,b,c),f23(a,b,c);f31(a,b,c),f32(a,b,c),f33(a,b,c)];
dX = p1-p0;
dF = J*dX;

%displaying our results
display(dF)
end