///create_instance(m,n,obj)
///create instance on tile[m,n]

var tile = tileMap[argument0,argument1];
tile.visitor = instance_create(tile.x,tile.y,argument2);
if(argument2 == oWall){
    tile.visitor.depth= 999;
}
else{
    tile.visitor.depth= tile.depthMod;
}
