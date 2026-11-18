void main() {
  // student: Iranzi Elisee
  // reg no: 26615/2024
  int? bonus;
  print(bonus ?? 50);
  bonus ??= 70;
  bonus ??= 90;
  print(bonus);

  int n = 10;
  do {
    print(n);
    n += 3;
  } while (n < 10);
}