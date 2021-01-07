_DATA SEGMENT
_DATA ENDS
_TEXT SEGMENT
PUBLIC allocateSpaceInStack

allocateSpaceInStack PROC
sub rsp, 160
nop;
nop;
nop;
nop;
nop;
nop;
nop;
nop;
nop;
nop;
nop;
nop;
allocateSpaceInStack ENDP



_TEXT ENDS
END