% Copyright (C) 2018, ETH Zurich, D-ITET, Kenneth Kuchera, Alexander Liniger
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%     http://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [b ] = findTheta(a)
%FINDTHETA returns theta, the index of the point on the centerline which is the
%closest to the current position

%the algorithm first performs a local search around a guess where the
%closest point on the center line is if the error is too big (more than
%half the track width) a global search is performed.

%then the projection is computed using the inner product and assuming the
%track is picewise affine
[breaks,coefs,~,~,dim] = unmkpp(a)

c=mkpp(breaks,coefs,dim);
b=ppval(c,1);
return