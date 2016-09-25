///findShortestPathTo(obj_index)
//returns a ds_list containing the path to arg0
//else returns empty list 


var lookingFor = argument0;

var testAlpha = -.1;
var soFar = ds_list_create();
ds_list_add(soFar,id);

var slice;
slice[0] = ds_list_create();
var a;
a[0] = id;
a[1] = noone;
ds_list_add(slice[0],a);
var sliceNumber = 0;


while(ds_list_size(slice[sliceNumber]) != 0){//untill every thing is searched
    //create next slice
    slice[sliceNumber+1] = ds_list_create();
    
    for(var j = ds_list_size(slice[sliceNumber])-1; j>=0; j--){//for each tile in slice[sliceNumber]
        
        var link = ds_list_find_value(slice[sliceNumber],j);
        var current= link[0]; 
        for(var i = array_length_1d(current.neighbor)-1; i>=0; i--){//for each neighbor
            var next = current.neighbor[i];//current -> next
            if(ds_list_find_index(soFar,next)==-1){
                if (next.visitor == noone){
                    ds_list_add(soFar,next);
                    var t = a; 
                    t[1] = link;
                    t[0] = next;
                    ds_list_add(slice[sliceNumber+1],t);
                    next.image_blend = c_lime;
                    //next.image_alpha=1+ testAlpha;                            //alpha
                }
                else if (next.visitor.object_index == lookingFor){
                    //next.image_alpha=1;
                    next.image_blend= c_lime;
                    
                    //return path list
                    path = ds_list_create();
                    
                    re_path(link);
                    
                    /*ds_list_add(path,next);
                    while(link[1] != noone){
                        link[0].image_blend = c_blue;
                        ds_list_add(path,link[0]);
                        link=link[1];
                    }//*/
                    return path;
                }  
            }
        }   
    }
    testAlpha-=.1;
    sliceNumber++;
    ds_list_shuffle(slice[sliceNumber]);
    
}//big while  

return ds_list_create();
