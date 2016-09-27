///create_abilityBox(owner)
    var abilities = argument0.visitor.abilityList;
    



with (instance_create(x+16,y+16,oAbilityBox)){
    owner = argument0;
    buffer = string_height('B');
    
    width = 0;    
    for (var i = array_length_1d(abilities)-1; i>=0; i--){
        width = max(string_width(abilities[i]), width);
    }
    width+=2*buffer;

    height = buffer+(2*buffer*array_length_1d(abilities));
    

    
    
}


