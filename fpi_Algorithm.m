%George Mendez Exam 2, Question 1
%Creating our function with input variables
function y = fpi_Algorithm(g,p0,k)
%input variables
%g=@(x) 1+x-(x.^2)/4;
%p0 = 5; Any points would work
%k = 8;
p(1)=p0;

%fpi algorithm
for x=1:k
    p(x+1)=g(p(x));
end
y = p(x+1);

%initializing lists for plots
X = [];
Y = [];
P = [];

%Creating our lists
for i=-30:.1:30
    X = [X i];
    Y = [Y g(i)];
    if g(i) == i
        P = [P i];
    end
end
P = [p0 P];
Z = [X];

%Plotting our graphs
plot(X,Y)
hold on
plot(X,Z)
hold on
scatter(P,P)
grid on
xlabel('X-axis')
ylabel('Y-axis')
title('FPI Algorithm')

%Plot our cobweb diagram
y =@(x)x;
line([p0,p0],[0,g(p0)]) %Horizontal
line([p0,g(p0)],[g(p0),g(p0)]) %Vertical
line([g(p0),g(p0)],[g(p0),g(g(p0))]) %Horizontal
line([g(p0),g(g(p0))],[g(g(p0)),g(g(p0))]) %Vertical

%Determine divergence or converges
if abs(g(g(p0))) > 2 || abs(g(g(p0))) < -2
    display('The Function Diverges')
else
    display('The Function Converges')
end

%Displaying our results
display('The 2 Fixed Points are')
display(' ')
display(P)
end