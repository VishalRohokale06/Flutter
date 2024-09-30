void main(){
int units=90;
int totalCharge=0;
if(units<0){
print("Enter valid units");
}else if(units>=0 && units<=90){
print("No charge");
}else if(units>90 && units<=180){
totalCharge=6*units;
print(totalCharge);
}else if(units>180 && units<=250){
totalCharge=10*units;
print(totalCharge);
}else{
totalCharge=15*units;
print(totalCharge);
}
}
