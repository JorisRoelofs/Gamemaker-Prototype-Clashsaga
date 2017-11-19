tileTypeSelect = random(1);

if (tileTypeSelect <= 0.3) 
{
    tileType = "Field"; //Field, Forrest, Mountain, Lake or Village
}
else if (tileTypeSelect <= 0.6)
{
    tileType = "Forrest";
}
else if (tileTypeSelect <= 0.9)
{
    tileType = "Mountain";
}
else
{
    tileType = "Lake";
}
