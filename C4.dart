// reg no: 26615/2024
// student: Iranzi Elisee
void main() {
  int x = 5;            // your D
  String result = '';
  while (x > 0) {
    if (x % 2 == 0) {
      result += 'E';    // even
    } else {
      result += 'O';    // odd
    }
    x -= 3;
  }
  print(result);                                  // OE
  print(result.length);                           // 2
  print(result.isEmpty ? 'nothing' : result[0]);  // O
}