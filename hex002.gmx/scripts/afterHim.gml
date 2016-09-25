///afterHim(obj_index)
//move toward arg0

if(visitor != noone && global.selected == noone){

    var path = findShortestPathTo(argument0);
    var pathLength = min(ds_list_size(path)-1,visitor.remainingMoves);
    
    if(pathLength > 0){
        //traverse list
        visitor.x=path[|pathLength].x;
        visitor.y=path[|pathLength].y;
        path[|pathLength].visitor = visitor;
        visitor = noone;
    }
    ds_list_destroy(path);                                                                                                                                                                                             
} 
