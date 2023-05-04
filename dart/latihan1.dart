import 'dart:io';

void main(){
  print("- - - - - LATIHAN 1 - - - - -");

  stdout.write("Masukkan Kata Sandi : ");
  var password = stdin.readLineSync();
  if (password == "Password"){
    print("Anda Berhasil Login!");
  } else {
    print("Password yang anda masukkan Salah!!!");
  }
}