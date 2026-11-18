// reg no: 26615/2024
// student: Iranzi Elisee 
void main() {
  for (int i = 0; i < 6; i++) {
    if (i == 2) continue; // skip printing when i is 2
    if (i == 4) break;    // stop the whole loop when i is 4
    print(i);
  }
}
