t=0:10;
numb_of_points=50;
R=120; %Radius
omega=7.56*2*pi/60;

angle_1=omega*t;
angle_2=omega*t+2*pi/3;
angle_3=omega*t+4*pi/3;

for i=1:length(t)

hold off

y_blade_1=linspace(0,-R*sin(angle_1(i)),numb_of_points);
z_blade_1=linspace(0,R*cos(angle_1(i)),numb_of_points);

y_blade_2=linspace(0,-R*sin(angle_2(i)),numb_of_points);
z_blade_2=linspace(0,R*cos(angle_2(i)),numb_of_points);

y_blade_3=linspace(0,-R*sin(angle_3(i)),numb_of_points);
z_blade_3=linspace(0,R*cos(angle_3(i)),numb_of_points);


plot(y_blade_1,z_blade_1,'b')

hold on

plot(y_blade_2,z_blade_2,'r')

hold on

plot(y_blade_3,z_blade_3,'g')

xlim([-R R]);
ylim([-R R]);

pause(0.1)

end