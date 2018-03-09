unit UnMenu;


interface

	uses qcrt,UnGlob;
	
	function MainMenu:byte;
	
implementation

	const
		items:array[0..3] of string = ( 
								'Start Game',
								'Credits & License',
								'Hall of Fame',
								'Quit');

	function MainMenu;
	var
		p:byte;
		x:string;
		i:byte;
	begin
		p:=0;
		Cls;
		repeat
			x:=GetKey;
			for i:=0 to 3 do
			begin
				Color(14,4);
				CenterText(40,1,'*** ASCII MAN ***');
				begin
					Color(14,0);
					if i=p then Color(15,4);
					CenterText(40,(i+1)*3,items[i])
				end	
			end;
			if ((x='Down') or (x='S')) and (p<3) then p:=p+1;
			if ((x='Up')   or (x='W')) and (p>0) then p:=p-1;
			if x=#27 then begin
				x:=#13;
				p:=3;
			end
		until x=#13;
		MainMenu:=p
	end;

end.
