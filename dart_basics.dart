// Student: Iranzi Elisee
// Reg no: 26615
const String regNo = '26615';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// ---------- B2 ----------
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

// ---------- B3 ----------
String initials(String fullName) {
  // by I.E.
  List<String> parts = fullName.split(' ');
  String result = '';
  for (String p in parts) {
    if (p.isNotEmpty) { // skips empty pieces made by extra spaces
      result += p[0].toUpperCase() + '.';
    }
  }
  return result;
}

// ---------- C5 ----------
void drawTriangle(int height) {
  // by I.E.
  for (int row = 1; row <= height; row++) {
    String symbol = row % 2 == 1 ? '*' : '#'; // odd row = *, even row = #
    print(' ' * (height - row) + symbol * row);
  }
}

// ---------- D2 ----------
int momoFee(int amount) {
  // by I.E.
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String maskPhone(String phone) {
  // by I.E.
  if (phone.length != 10) return 'INVALID';
  return phone.substring(0, 3) +
      '*' * (phone.length - 5) +
      phone.substring(phone.length - 2);
}

void main() {
  // by I.E.
  print('Reg no: $regNo | D = $d | T = $t');

  // B2
  print('--- B2 ---');
  String name = 'Iranzi Elisee';
  print('$name has ${countVowels(name)} vowels');

  // B3
  print('--- B3 ---');
  print(initials(name));
  print(initials(' ana uwase '));
  print('[${initials(' ')}]'); // empty result, brackets only show it is empty

  // C5
  print('--- C5 ---');
  drawTriangle(d + 3);
  drawTriangle(0);  // prints nothing
  drawTriangle(-2); // prints nothing

  // D2
  print('--- D2 ---');
  int i = 1;
  int totalFees = 0;
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    totalFees += fee;
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone('0788123456')}');
    i++;
  }
  print('Total fees: $totalFees RWF');
}