///resetTeam(team)
myTeam = global.team[argument0];
for(var i=ds_list_size(myTeam)-1; i>=0; i--){
    myTeam[|i].remainingMoves=myTeam[|i].totalMoves;
}
