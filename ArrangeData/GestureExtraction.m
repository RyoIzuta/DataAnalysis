## Copyright (C) 2015 Ryo Izuta
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} GestureExtraction (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ryo Izuta <RyoIzuta@Izuta-no-MacBook-Air-2.local>
## Created: 2015-06-16

function [Variance3] = GestureExtraction (Target, Th_S, Th_G)

  %TimeStamp, PressData, PressData_TD, AccData
    PlotData = Arrange_Data(Target);
    PressData = PlotData(10:end,3);
    tmp = zeros(size(PressData,1),1);
    for k=11:size(tmp,1)
     for m=1:10
        tmp2(m,1) = PressData(k-m,1);
     end
      tmp(k,1) = var(tmp2);
    end
  
    Variance = tmp(11:end,1);
  
   tmp3 = zeros(size(Variance,1),1);
   for k=21:size(tmp3,1)
      for m=1:20
        tmp2(m,1) = Variance(k-m,1);
      end
      tmp3(k,1) = var(tmp2);
    end
  
    Variance2 = tmp3(11:end,1);
    
    startFlag = 0;
    for k=1:size(Variance2,1)
      if(startFlag == 0 && Variance2(k,1) > Th_S)
        CutPoint_S = k;
        startFlag = 1;
        %break;
      elseif(startFlag == 1 && Variance2(k,1)<Th_G)
        CutPoint_G = k;
        break;
      end
    end
  
   Variance3 = Variance2(CutPoint_S:CutPoint_G,1);

end
