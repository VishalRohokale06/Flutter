class Demo{

int a = 10;
static int b = 20;

void display(){
print(a);
print(b);
}
}

class Child extends Demo{

}

void main(){
Child obj = Child();
obj.display();
}
