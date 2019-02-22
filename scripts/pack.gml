///pack(args,...)
// INFO: general helper script to create arrays from a list of arguments
var i = argument_count;
var m = array_create(i);

while (--i >= 0) m[i] = argument[i];
return m;

