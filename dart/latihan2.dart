import 'dart:io';

void main() {
  print("- - - - - LATIHAN 2 - - - - -");

  stdout.write("Masukkan Nilai Anda : ");
  var nilaimhs = stdin.readLineSync();
  int nilai = int.parse("$nilaimhs");
  String grade;

  if (nilai >= 90) grade = "A+";
  else if(nilai >= 80) grade = "A";
  else if(nilai >= 70) grade = "B+";
  else if(nilai >= 60) grade = "B";
  else if(nilai >= 50) grade = "C+";
  else if(nilai >= 40) grade = "C";
  else if(nilai >= 30) grade = "D";
  else if(nilai >= 20) grade = "E";
  else grade = "F";

  print("Nilai : $nilai");
  print("Grade : $grade");
}