gridOffsetX = argument[0];
gridOffsetY = argument[1];
gridWidth= argument[2];
gridHeight = argument[3];
tile = argument[4];

var tileWidth = 0; //Is changed later in the code, as you can only check the sprite width once an instance of an object exists in the game world
var tileHeight = 0;

for(var i = 0; i < gridHeight; i++)
{
    for(var j = 0; j < gridWidth; j++)
    {
        tileIDArray[i,j] = instance_create(gridOffsetX + (j * tileWidth), gridOffsetY + (i * tileHeight), tile)
        
        if(i == 0 && j == 0)
        {
            var tileSprite = tile.sprite_index;
            tileWidth = sprite_get_width(tileSprite);
            tileHeight = sprite_get_height(tileSprite);
        }
    }
}

return(tileIDArray);
