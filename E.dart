// reg no: 26615/2024
// student: Iranzi Elisee
String grade(int mark) {
  if (mark >= 50) {          // BUG: 85 is also >= 50, so this matches first and returns 'C'
    return 'C';
  } else if (mark >= 70) {   // never reached for marks 70 and above (50 already caught them)
    return 'B';
  } else if (mark >= 80) {   // never reached, so 'A' can never be returned
    return 'A';
  }
  return 'F';
}

bool isPalindrome(String word) {
  int i = 0;
  while (i < word.length) {
    // BUG: when i = 0, word.length - i = 5, but 'level' only has indexes 0 to 4
    // so word[5] crashes with: RangeError (index): Invalid value: Not in inclusive range 0..4: 5
    // FIX: use word.length - 1 - i
    if (word[i] != word[word.length - i]) return false;
    i++;
  }
  return true;
}

void main() {
  print(grade(85));              // prints C (wrong, should be A)
  print(isPalindrome('level'));  // crashes with RangeError
}