//csv_to_ds_grid(file,delimiter [most likely ","])
//returns a ds_grid of the CSV.

var f,rt,rtp,cc,rc,c,cr,i,ii,g,sc;
f = file_text_open_read(argument[0]);
show_debug_message("File: "+string(argument[0]));
sc = ds_list_create();

//Headers
rt=file_text_read_string(f);
rtp=string_replace(rt,argument[1],true);

cc=ds_list_size(rtp);
rc=0;
while(!file_text_eof(f))
{
    rc+=1;
    file_text_readln(f)
}
file_text_close(f);

g=ds_grid_create(cc,rc);

//Put in the column headers
i=0;
repeat(ds_list_size(rtp))
{
    ds_grid_add(g,i,0,ds_list_find_value(rtp,i));
    var h;
    h = string_upper(ds_list_find_value(rtp,i));
    h=string_replace_all(h," ","_");
    //Identify columns that contain strings
    if(string_char_at(h,1)=="$")
    {
        h=string_delete(h,1,1);
        ds_list_add(sc,i);   
    }
}
ds_list_destroy(rtp);
f = file_text_open_read(argument[0]);
file_text_readln(f);

//Rows
cr=1;

while(!file_text_eof(f))
{
    rt=file_text_read_string(f);
    file_text_readln(f);
    rtp=string_replace(rt,argument[1],true);
    i=0;
    repeat(ds_list_size(rtp))
    {
        if(ds_list_find_index(sc,i)>-1)
        {
            ds_grid_add(g,i,cr,string(ds_list_find_value(rtp,i)));
        }
        else
        {
                                            show_debug_message("Value: "+string(ds_list_find_value(rtp,i)));
           ds_grid_add(g,i,cr, real(ds_list_find_value(rtp,i)));
        }
        i+=1;
    }
    cr+=1;
    ds_list_destroy(rtp);
}
file_text_close(f);
ds_list_destroy(sc);

return(g);
