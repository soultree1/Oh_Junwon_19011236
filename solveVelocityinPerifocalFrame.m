function velocityinPQW = solveVelocityinPerifocalFrame(semimajor_axis,eccentricity,true_anomaly)

mu= 398600.4418; % km^3Xs^-2
semimajor_axis = input('semimajor_axis = ');
eccentricity = input('eccentricity = ');
true_anomaly = input('true anomaly = ');
cosE=(eccentricity+cos(true_anomaly*pi/180))/(1+eccentricity*cos(true_anomaly*pi/180)); %cos(E)
r=semimajor_axis*(1-eccentricity*cosE);
p=semimajor_axis*(1-eccentricity^2);

velocityinPQW = [-sqrt(mu/p)*sin(true_anomaly*pi/180); sqrt(mu/p)*(eccentricity+cos(true_anomaly*pi/180)); 0];

end



