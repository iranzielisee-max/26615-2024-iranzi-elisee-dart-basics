// 26615/2024
// student: iranzi elisee
void main() {
  String city = 'Kigali';

  print(city.length);                    // 6             (6 letters)
  print(city[city.length - 1]);          // i             (last letter, index 5)
  print(city.substring(2, 4));           // ga            (index 2 up to, not including, 4)
  print(city.toUpperCase().indexOf('A'));// 3             (KIGALI, the A is at index 3)
  print(city.contains('k'));             // false         (it has capital K, not small k)
  print('$city.length');                 // Kigali.length (only $city is replaced, ".length" stays as text)
  print('${city.length}');               // 6             (braces make Dart run city.length)
  print(city * 2);                       // KigaliKigali  (text repeated twice)
  city.toUpperCase();                    // (no print, nothing shown)
  print(city);                           // Kigali        (strings never change, toUpperCase made a new one we threw away)
  print(city.replaceAll('i', '!'));      // K!gal!        (every i becomes !)
  print('5' + 5.toString());             // 55            (joins text "5" and "5")
  print(int.parse('5') + 5);             // 10            (text turned into number, then added)
}