// 26615/2024
//studebt: Iranzi Elisee
String initials(String fullName) {
  // by I.E.
  List<String> parts = fullName.split(' ');
  String result = '';
  for (String p in parts) {
    if (p.isNotEmpty) {                    // skips the empty pieces made by extra spaces
      result += p[0].toUpperCase() + '.';  // first letter, capital, then a dot
    }
  }
  return result;
}

void main() {
  print(initials('Iranzi Elisee'));   // I.E.
  print(initials(' ana uwase '));     // A.U.
  print('[${initials(' ')}]');        // []   (empty result, brackets just show it is empty)
}