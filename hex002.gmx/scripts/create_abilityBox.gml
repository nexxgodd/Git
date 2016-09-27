///create_abilityBox(owner) 


with (instance_create(x+16,y+16,oAbilityBox)){
    owner = argument0;
    abilities = owner.visitor.abilityList;
    buffer = string_height('B');
    count = array_length_1d(abilities);
    
    width = 0;    
    for (var i = count-1; i>=0; i--){
        width = max(string_width(abilities[i]), width);
    }
    width+=2*buffer;

    height = buffer+(2*buffer*count);
    
    center = floor(x+width/2);

    
    
}


