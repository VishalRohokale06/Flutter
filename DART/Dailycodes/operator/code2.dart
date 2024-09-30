void main(){

int x = 10;
int y = 20;

int ans = ++x + x++ + y++;
print(ans);                 //42

ans = --y + ++y;            //41
print(ans);

print(x);                   //12
print(y);                   //21
}
