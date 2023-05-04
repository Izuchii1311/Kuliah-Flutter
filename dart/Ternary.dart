import 'dart:io';

void main(){
  print("- - - - - MENGENAL TERNARY DENGAN DART - - - - -");

  stdout.write("Masukkan Nilai : ");
  var nilaiinput = stdin.readLineSync();

  int nilai = int.parse("$nilaiinput");
  var hasil = (nilai>2)? "Benar" : "Salah";
  
  print("Nilai : $nilai");
  print("Grade : $hasil");
  
}