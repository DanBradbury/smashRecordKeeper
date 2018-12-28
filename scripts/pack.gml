///pack(args,...)
var i = argument_count;
var m = array_create(i);

while (--i >= 0) m[i] = argument[i];
return m;

