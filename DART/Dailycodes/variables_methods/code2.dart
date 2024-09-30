class Demo{
static int x = 10;
int get getx => x;
//set setx(int x) => this.x = x;  //error
set setx(int x) => Demo.x = x;

Demo(){
print("Demo Constrictor");
}
}

void main(){
print(Demo.x);

Demo obj = Demo();
print(obj.getx);

obj.setx=50;
print(obj.getx);
}
