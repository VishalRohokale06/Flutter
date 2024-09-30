class Demo{

int x = 10;
int _y = 20;

int get gety => _y;

void set sety(int data) => _y=data;
}

void main(){
Demo obj = Demo();
print(obj.x);
print(obj.gety);

obj.sety=30;
print(obj.gety);
}
