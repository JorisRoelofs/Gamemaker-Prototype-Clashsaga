for(var i = 0; i < argument_count; i++)
{
    if(keyboard_check_pressed(argument[i])) return argument[i];
}
return "";
