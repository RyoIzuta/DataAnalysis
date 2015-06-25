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
%% @deftypefn {Function File} {@var{retval} =} Calc_CrossingCount (@var{input1}, @var{input2})
%%
%% @seealso{}
%% @end deftypefn

%% Author: Ryo Izuta <RyoIzuta@Izuta-no-MacBook-Air-2.local>
%% Created: 2015-04-27

function [CrossingCount, CrossingCountF, CrossingCountS] = Calc_CrossingCount (Data)
  [Ave, Var] = Calc_AveandVar(Data);
  CrossingCount = zeros(1,size(Data, 2));
  CrossingCountF = zeros(1,size(Data, 2));
  CrossingCountS = zeros(1,size(Data, 2));
    for j=1:size(Data,2)
      for i=2:size(Data,1)
        NowValue = Data(i,j)-Ave(1,j);
        PreValue = Data(i-1,j)-Ave(1,j);
        if (NowValue*PreValue < 0)
          CrossingCount(1,j) = CrossingCount(1,j) +1;
        end
       end
    end
    
    for j=1:size(Data,2)
      for i=2:int16(size(Data,1)/2)
        NowValue = Data(i,j)-Ave(1,j);
        PreValue = Data(i-1,j)-Ave(1,j);
        if (NowValue*PreValue < 0)
          CrossingCountF(1,j) = CrossingCountF(1,j) +1;
        end
       end
    end
    
    for j=1:size(Data,2)
      for i=int16((size(Data,1)/2)+1):size(Data,1)
        NowValue = Data(i,j)-Ave(1,j);
        PreValue = Data(i-1,j)-Ave(1,j);
        if (NowValue*PreValue < 0)
          CrossingCountS(1,j) = CrossingCountS(1,j) +1;
        end
       end
    end
    
end
