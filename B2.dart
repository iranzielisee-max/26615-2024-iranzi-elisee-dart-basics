// Student: Iranzi Elisee
// Reg no: 26615/2024

const String regNo = '26615';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int countVowels(String text) {
  // by I.E.
  int count = 0;
  String lower = text.toLowerCase(); // makes capital letters count
  for (int i = 0; i < lower.length; i++) {
    if ('aeiou'.contains(lower[i])) {
      count++;
    }
  }
  return count;
}

void main() {
  print('Reg no: $regNo | D = $d | T = $t');
  String name = 'Iranzi Elisee';
  print('$name has ${countVowels(name)} vowels');
}