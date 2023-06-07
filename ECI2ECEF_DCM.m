function DCM=ECI2ECEF_DCM(time)
YYYY=input('year = ');
MM=input('month = ');
DD=input('day = ');
hh=input('hour = ');
mm=input('minute = ');
ss=input('second = ');

time = datetime(2000, 1, 1, 12, 0, 0);
time1 = datetime(YYYY,MM,DD,hh,mm,ss);
jd0 = juliandate([2000 1 1 12 0 0]);
duration = time1 - time;
dt = 3600*hours(duration) + 60*minutes(duration) + seconds(duration);
w = 7.29115e-5; % The angular velocity of the Earth in rad/s

thGMST = siderealTime(jd0);
theta_g0 = thGMST;
theta_g = (theta_g0*pi/180 + w*dt);
DCM = [cos(theta_g) sin(theta_g) 0; -sin(theta_g) cos(theta_g) 0; 0 0 1];