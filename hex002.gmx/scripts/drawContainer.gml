///drawContainer(sprite,count,remainder,startingX,y)
var xx = argument3;
var rrh = argument2;
for(var h = argument1; h>0; h--){
    if(rrh>1){//full
        var size = 0;
        rrh-=2;
    }
    else if (rrh == 1){//half
        var size = 1;
        rrh-=1;
    }
    else{//empty
        var size = 2;
    }
    draw_sprite(argument0,size,xx,argument4);
    xx+=16;
}
