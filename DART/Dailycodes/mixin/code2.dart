mixin Parent{

int x = 10;
void fun(){
print("In fun");
}

static void run(){
print("In run-mixin");
}
}

void main(){
Parent.run();
}
