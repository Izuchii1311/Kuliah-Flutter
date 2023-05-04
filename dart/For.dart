import 'dart:io';

void main(){
  print("- - - - - LATIHAN PERULANGAN (For) DENGAN DART - - - - -");

  stdout.write("Anda ingin melakukan perulangan berapa kali : ");
  var loop = stdin.readLineSync();
  int j = int.parse("$loop");

  for (int i = 1; i <= j; i++){
    print("Anda Telah Berhasil Mengulang Kalimat Ini sebanyak $i kali");
  }
}