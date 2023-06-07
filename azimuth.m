function az = azimuth(ENU)
ENU = input('ENU = ');
az_before = acos(ENU(:,2)/sqrt(ENU(:,1)^2+ENU(:,3)^2));

az = mod(az_before, 360)*180/pi; % adjust azimute angle to range [0 ,360) & in degree