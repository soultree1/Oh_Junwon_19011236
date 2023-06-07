function el = elevation(ENU, el_mask)
ENU = input('ENU = ');
el_mask = input("el_ mask = ");
el_rad = atan2(ENU(:,3), sqrt(ENU(:,2).^2+ENU(:,1).^2));
el=el_rad*180/pi; % elevation angle in degree

el(el<el_mask) = NaN;

