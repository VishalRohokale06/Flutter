class Demo{

int x = 10;
static int y = 20;

}

class DemoChild extends Demo{
int get getx => Demo.y;
}

void main(){
DemoChild obj = DemoChild();
print(obj.x);
print(obj.getx);
}
