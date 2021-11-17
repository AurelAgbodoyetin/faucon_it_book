double compute(double x, double y, String z) {
  print("Hello $z");
  return (x + y);
}

void main() {
  double res = compute(5.2, 7.0, "Toni");
  print(res);
}
