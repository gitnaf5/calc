import 'dart:io';

class Calculator {
  Future<double?> getNumber(String prompt) async {
    stdout.write(prompt);
    return double.tryParse(await stdin.readLineSync() ?? '');
  }

  Future<String?> getOperator() async {
    stdout.write("Masukkan operator (+, -, *, /): ");
    return await stdin.readLineSync();
  }

  double? calculate(double a, double b, String op) {
    return (op == '+') ? a + b :
           (op == '-') ? a - b :
           (op == '*') ? a * b :
           (op == '/' && b != 0) ? a / b : null;
  }

  Future<void> run() async {
    print("=== Kalkulator Sederhana ===");
    double? a = await getNumber("Masukkan angka pertama: ");
    String? op = await getOperator();
    double? b = await getNumber("Masukkan angka kedua: ");

    if (a == null || b == null || op == null) {
      print("Input tidak valid.");
      return;
    }

    double? hasil = calculate(a, b, op);
    print(hasil != null ? "\nHasil: $a $op $b = $hasil" : "Operator tidak valid atau pembagian oleh nol.");
  }
}

void main() async {
  Calculator calc = Calculator();
  await calc.run();
}
