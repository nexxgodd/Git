///create_instance(m,n,obj,owner)
///create instance on tile[m,n] and add to owner

var tile = tileMap[argument0,argument1];
var v = instance_create(tile.x,tile.y,argument2);
tile.visitor = v;
if(argument2 == oWall){
    v.depth= 999;
}
else{
    v.depth= tile.depthMod;
}

if(argument3<2){
    ds_list_add(global.team[argument3],v);
    v.team = argument3;
}

/*
switch(argument3){
    case 0:
        ds_list_add(global.playerDudes,v);
        v.team = 0;
        break;
    case 1:
        ds_list_add(global.enemyDudes,v);
        v.team = 1;
        break;
    case 2://walls and shit
        break;
    default:
        show_error("need an owner", false);
}
*/
