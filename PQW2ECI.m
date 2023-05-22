function A=PQW2ECI(arg_prg, inc_angle, RAAN)


%% input
arg_prg=input('arg_prg ='); %argument of perigee
inc_angle=input('inc_angle='); %inclination
RAAN=input('RAAN ='); %right ascension of ascending node

%% simplication
a=cos(arg_prg);
b=sin(arg_prg);
c=cos(inc_angle);
d=sin(inc_angle);
e=cos(RAAN);
f=sin(RAAN);

%% calculation
A=[e f 0; -f e 0; 0 0 1]*[1 0 0; 0 c d; 0 -d c]*[a b 0; -b a 0; 0 0 1];