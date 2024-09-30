class Demo{

static int x = 10;

static void fun(){
print("In static method");
print(x);
}
int get getx => x;

//Function retFun(){
dynamic retFun(){
return fun;
}
}

void main(){
Demo obj = Demo();
print(obj.getx);
//Function ret = obj.retFun();
//dynamic ret = obj.retFun();
var ret = obj.retFun();
ret();
}
