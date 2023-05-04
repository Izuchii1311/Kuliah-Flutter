import 'dart:io';

void main(){
  print("- - - - - MENGENAL OPERATOR ARITMATIKA DENGAN DART - - - - -");
  // a
  stdout.write("Masukkan nilai a : ");
  var angkaa = stdin.readLineSync();
  double a = double.parse("$angkaa");

  // b
  stdout.write("Masukkan nilai b : ");
  var angkab = stdin.readLineSync();
  double b = double.parse("$angkab");

  double hasil;

  // Penjumlahan
  hasil = a + b;
  print("Hasil Pertambahan dari $a dan $b adalah : $hasil");
  // Pengurangan
  hasil = a - b;
  print("Hasil Pengurangan dari $a dan $b adalah : $hasil");
  // Perkalian
  hasil = a * b;
  print("Hasil Perkalian dari $a dan $b adalah : $hasil");
  // Pembagian
  hasil = a / b;
  print("Hasil Pembagian dari $a dan $b adalah : $hasil");
  // Sisa Bagi
  hasil = a % b;
  print("Hasil Sisa Bagi dari $a dan $b adalah : $hasil");
}