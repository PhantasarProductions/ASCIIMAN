{ --- START LICENSE BLOCK ---
	ASCII MAN
	Title Screen
	
	
	
	(c) Jeroen P. Broks, 2018, All rights reserved
	
		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.
		
		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.
		You should have received a copy of the GNU General Public License
		along with this program.  If not, see <http://www.gnu.org/licenses/>.
		
	Exceptions to the standard GNU license are available with Jeroen's written permission given prior 
	to the project the exceptions are needed for.
Version: 18.03.09
  --- END LICENSE BLOCK --- } 
unit UnTitle;


interface
uses qcrt,crt;

	procedure ShowTitle;


implementation
                                      {         1         2         3         5         6         7         8}
                                      {1234567890123456789012345678901234567890123456789012345678901234567890}
const TData:array[0..11] of string = ('                                                                      ', {0}
                                      '     EEEE    EEEE     EEEE   EEEE  EEEE   CC    CC   CCCC   CCC  CC   ', {1}
                                      '    EE88EE  EE88EE   EE88EE   EE88  EE88  CCC  CCC8 CC88CC  CCCC CC8  ', {2}
                                      '    EE8 EE8 EE8  88  EE8  88  EE8   EE8   CCCCCCCC8 CC8 CC8 CC8CCCC8  ', {3}
                                      '    EEEEEE8  EEEEE   EE8      EE8   EE8   CC8CC CC8 CCCCCC8 CC8 CCC8  ', {4}
                                      '    EE88EE8   888EE  EE8      EE8   EE8   CC8 88CC8 CC8 CC8 CC8  CC8  ', {5}
                                      '    EE8 EE8 EE   EE8 EE8 EE   EE8   EE8   CC8   CC8 CC8 CC8 CC8  CC8  ', {6}
                                      '    EE8 EE8  EEEEE8   EEEE88 EEEEE EEEE   CC8   CC8 CC8 CC8 CC8  CC8  ', {7}
                                      '     88  88   88888    8888   88888 8888   88    88  88  88  88   88  ', {8}
                                      '                                                                      ', {9}
                                      '   AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA  ', {10}
                                      '    88888888888888888888888888888888888888888888888888888888888888888 '  {11}
								  );

procedure ShowTitle;
var 
	ix,iy:byte;
	c:char;
begin
	clrscr;
	for iy:=0 to 11 do
	begin
		for ix:=0 to 79 do
		begin
			c:=TData[iy][ix];
			case c of
				'8':Color( 8,0);
				'A':Color(10,0);
				'E':Color(14,0);
				'C':Color(12,0);
				else
					Color( 0,0);
			end;
			WriteXY(ix+1,iy+1,#219)
		end
	end;
	Color(9,0);
	CenterText(40,14,'A game by Jeroen P. Broks');
	Color(8,0);
	CenterText(40,25,'(c) 2018 Jeroen P. Broks - General Public License');
	Color(30,0);
	CenterText(40,20,'Hit any key to continue');
	WaitKey
end;


end.
