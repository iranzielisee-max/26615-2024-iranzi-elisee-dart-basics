//  26615/2024
// student : iranzi elisee
void main() {
  int a = 17;
  int b = 5;

  print(a / b);            // 3.4    (/ gives a decimal)
  print(a ~/ b);           // 3      (~/ drops the decimal)
  print(a % b);            // 2      (remainder)
  print(-a % b);           // 3      (remainder is never negative)
  print(-a ~/ b);          // -3     (-3.4 cut toward zero)
  print(-17.abs());        // -17    (abs first, then minus)
  print(0.1 + 0.2 == 0.3); // false  (0.30000000000000004)
  print(10 == 10.0);       // true   (same value)
}