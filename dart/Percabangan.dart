import 'dart:io';

void main(){
  print("- - - - - MENGENAL PERCABANGAN DENGAN DART - - - - -");

  stdout.write("Masukkan Total Harga Belanjaan Anda : ");
  var uang = stdin.readLineSync();

  int uangbelanja = int.parse("$uang");

  if (uangbelanja == 200000){
    print("Anda Mendapatkan Cashback sebesar 5%");
  } else if(uangbelanja == 100000){
    print("Anda Mendapatkan CashBack sebesar 3%");
  } else if(uangbelanja >= 200000){
    print("Terimakasih Telah Berbelanja Sangat Banyak!!");
  } else if(uangbelanja <= 200000){
    print("Terimakasih Telah Berbelanja");
  }
}