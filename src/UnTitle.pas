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
	end
end;


end.
