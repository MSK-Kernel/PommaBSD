\ brand.4th with PommaBSD art inline

2 brandX ! 1 brandY !

: brand+ ( x y c-addr/u -- x y' )
	2swap 2dup at-xy 2swap
	type
	1+
;

: brand ( x y -- )
	s"  ____                            ____   _____ ____  " brand+
	s" |  _ \ ___  _ __ ___  _ __ ___  | __ ) / ___/|  _ \ " brand+
	s" | |_) / _ \| '_ ` _ \| '_ ` _ \ |  _ \| (___ | | | |" brand+
	s" |  __/ (_) | | | | | | | | | | || |_) |\___ \| |_| |" brand+
	s" |_|   \___/|_| |_| |_|_| |_| |_||____//_____/|____/ " brand+
	2drop
;

: draw-brand ( -- )
	brandX @ brandY @ brand
;

: draw-brand
	['] draw-brand console-iterate
;
