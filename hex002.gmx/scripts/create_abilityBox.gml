///create_abilityBox(owner) 


with (instance_create(x,y,oAbilityBox)){
    owner = argument0;
    abilities = owner.visitor.abilityList;
    buffer = string_height('B');
    count = array_length_1d(abilities);
    
    width = 0;    
    for (var i = count-1; i>=0; i--){
        var w = string_width(abilities[i]);
        half[i]=w/2+1;
        width = max(w, width);
    }    
     
    width+=2*buffer;
    height = buffer+(2*buffer*count);
    
    //adjust x to proper quadrant
    if(x-view_xview<view_wview/2){
        x+=16;
    }
    else{
        x-=16+width;
    }    
    //adjust  to proper quadrant 
    if(y-view_yview<view_hview/2){
        y+=16;
    }
    else{
        y-=16+height;
    }
       
    center = floor(x+width/2);
    hover = -1;
    
}


