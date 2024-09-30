class Demo{
static int x = 10;
int get getx => x;
set setx(int x) => Demo.x=x;
}

void main(){
Demo obj = Demo();
Demo obj1 = Demo();

print(obj.getx);
print(obj1.getx);

obj1.setx=50;
print(obj1.getx);
}
