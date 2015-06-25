%% Copyright (C) 2015 Ryo Izuta
%% 
%% This program is free software; you can redistribute it and/or modify it
%% under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 3 of the License, or
%% (at your option) any later version.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% along with this program.  If not, see <http://www.gnu.org/licenses/>.

%% -*- texinfo -*- 
%% @deftypefn {Function File} {@var{retval} =} Cut_Gesture (@var{input1}, @var{input2})
%%
%% @seealso{}
%% @end deftypefn

%% Author: Ryo Izuta <RyoIzuta@Izuta-no-MacBook-Air-2.local>
%% Created: 2015-04-24
function [Arranged] = Cut_Gesture (data)
  tmp = zeros(1, size(data,2));
  Count = 1;
  for i=1:size(data,1)
    if(data(i,1) ~= 0)
      tmp = vertcat(tmp, data(i,:));
      Arranged(1,Count) = [{tmp}];
    else
      tmp = zeros(1,size(data,2));
      Count = Count + 1;
    end
  end

end
