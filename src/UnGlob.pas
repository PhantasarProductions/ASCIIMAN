{ --- START LICENSE BLOCK ---
	ASCII MAN
	Globals
	
	
	
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
Unit UnGlob;



interface

	type tHOF = RECORD
		name:String;
		score:Integer
	end;

	var
		score,topscore:integer;
		Lives:Byte;
		EnTimer,EnAfraidTimer:Integer;
		
		jcrfile:string;


implementation

begin
	jcrfile:=ParamStr(0);
	jcrfile[length(jcrfile)-1]:='J';
	jcrfile[length(jcrfile)-1]:='C';
	jcrfile[length(jcrfile)-0]:='R'
end.
