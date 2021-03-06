function y = tapas_sgm(x, a)
% --------------------------------------------------------------------------------------------------
% Copyright (C) 2012-2013 Christoph Mathys, TNU, UZH & ETHZ
%
% This file is part of the HGF toolbox, which is released under the terms of the GNU General Public
% Licence (GPL), version 3. You can redistribute it and/or modify it under the terms of the GPL
% (either version 3 or, at your option, any later version). For further details, see the file
% COPYING or <http://www.gnu.org/licenses/>.

% ./ Array right division. A./B is the matrix with elements A(i,j)/B(i,j). 
% A and B must have the same size, unless one of them is a scalar. 

% x = ka(1)*muhat
% a = 1

y = a./(1+exp(-x));

return;
