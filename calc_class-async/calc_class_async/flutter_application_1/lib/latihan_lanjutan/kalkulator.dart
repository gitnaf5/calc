import 'dart:io';

void main() {
  print("=== Kalkulator Sederhana ===");

  stdout.write("Masukkan angka pertama: ");
  double? a = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukkan operator (+, -, *, /): ");
  String? op = stdin.readLineSync();
  stdout.write("Masukkan angka kedua: ");
  double? b = double.tryParse(stdin.readLineSync() ?? '');

  if (a == null || b == null || op == null) {
    print("Input tidak valid.");
    return;
  }

  double? hasil = (op == '+') ? a + b :
                  (op == '-') ? a - b :
                  (op == '*') ? a * b :
                  (op == '/' && b != 0) ? a / b : null;

  print(hasil != null ? "\nHasil: ${a} ${op} ${b} = ${hasil}" : "Operator tidak valid atau pembagian oleh nol.");
}
