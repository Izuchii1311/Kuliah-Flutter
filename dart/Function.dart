import 'dart:io';

// function yang digunakan untuk mengalikan setiap sisinya
int LuasPersegi(int sisi){
  return sisi*sisi;
}

void main(){
  print("- - - - - LATIHAN FUNCTION DENGAN DART - - - - -");

  // Inputan
  stdout.write("Masukkan nilai sisi : ");
  var sisiPersegi = stdin.readLineSync();
  int sisi = int.parse("$sisiPersegi");

  // Result
  int result = LuasPersegi(sisi);
  print("Hasil dari $sisi x $sisi adalah : $result");
}