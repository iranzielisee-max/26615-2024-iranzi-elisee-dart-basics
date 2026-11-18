// 26615/2024
void main() {
  int x = 5;   // your D
  int y = 15;  // your T
  var z = x * 2 + y ~/ 4; // 10 + 3 = 13
  z += x;                 // 13 + 5 = 18

  print(z);               // 18    (13 + 5)
  print(z.isEven);        // true  (18 divides by 2 with no remainder)
  print('$z' + '$x');     // 185   (joins the text "18" and "5", no adding)
}