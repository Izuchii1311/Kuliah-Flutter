import 'dart:io';

void main(){
  print("- - - - - LATIHAN PERULANGAN (While) DENGAN DART - - - - -");

  stdout.write("Anda ingin melakukan perulangan berapa kali : ");
  var ulang = stdin.readLineSync();

  int j = int.parse("$ulang");
  int i = 1;
  while(i <= j){
    print("Perulangan ke $i");
    i++;
  }
}