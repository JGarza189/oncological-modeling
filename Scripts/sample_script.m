 %This code solves four equations and four unknowns
f = @(t,y) [-2*y(3)*y(1);
          2*y(3)*y(1)-1*y(2);
          1*y(2) - 3*y(3);
          2*y(3) - 3*y(4)]
 [t,ya]=ode45(f,[0 6], [4 0.1 0 2]);
 plot(t,ya(:,1))
 hold on
 plot(t,ya(:,2),'k')
 plot(t,ya(:,3),'r')
 plot(t,ya(:,4),'g')
 hold off