void drawTriangle(int height) {
  // student: Iranzi Elisee
  // reg no: 26615/2024
  for (int row = 1; row <= height; row++) {
    String symbol = row % 2 == 1 ? '*' : '#'; // odd row = *, even row = #
    print(' ' * (height - row) + symbol * row);
  }
}

void main() {
  drawTriangle(5 + 3); // height = D + 3 = 8 (in your real file use: d + 3)
  drawTriangle(0);     // prints nothing
  drawTriangle(-2);    // prints nothing
}