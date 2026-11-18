// student: Iranzi Elisee
  // reg no: 26615/2024
int count = 1;

void bump() {
  
  int count = 10;
  count++;
}

void doubleIt(int value) {
  
  value = value * 2;
}

// reg no: 26615/2024
// student: Iranzi Elisee
int addVat(int price, {int rate = 18}) => price + price * rate ~/ 100;

void main() {
  bump();
  print(count);                    // 1
  int v = 5;
  doubleIt(v);
  print(v);                        // 5
  print(addVat(1000));             // 1180
  print(addVat(999));              // 1178
  print(addVat(1000, rate: 0));    // 1000
}