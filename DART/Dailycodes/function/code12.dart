void main(){

playerInfo(jerNo:7, pName:"MSD", country:"India");
playerInfo(jerNo:18,pName:"virat",country:"India");
}

void playerInfo({int? jerNo,String? country,required String pName}){

print("JerNo = $jerNo  PlayerName = $pName  Country = $country");
}
