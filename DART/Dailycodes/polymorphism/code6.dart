abstract class Coder{
void devType();
}

class Webdev extends Coder{
void devType(){
print("Web Dev");
}
}

class MobDev extends Coder{
void devType(){
print("Mob Dev");
}
}

void main(){
Coder obj = MobDev();
obj.devType();
}
