void main(){

int numDays = 7;

while (numDays >= 0) {
if (numDays == 0) {
print("0 days Assignment is overdue");
} else if (numDays == 1) {
print("$numDays day remaining");
} else {
print("$numDays days remaining");
}
numDays--;
}
}
