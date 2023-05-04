import 'dart:io';

void main(){
  print("- - - - - MENGENAL SWITCH CASE DENGAN DART - - - - -");

  stdout.write("Masukkan Grade Nilai Anda : ");
  var grade = stdin.readLineSync();
  String keterangan;

  switch(grade){
    case "A+":{
      keterangan = "Range Nilai >= 90";
      break;
    }
    case "A":{
      keterangan = "Range Nilai >= 80";
      break;
    }
    case "B+":{
      keterangan = "Range Nilai >= 70";
      break;
    }
    case "B":{
      keterangan = "Range Nilai >= 60";
      break;
    }
    case "C":{
      keterangan = "Range Nilai >= 50";
      break;
    }
    case "D":{
      keterangan = "Range Nilai >= 40";
      break;
    }
    default:{
      keterangan = "Range nilai >= 10";
    }
  }

  print("Nilai : $grade");
  print("Keterangan : $keterangan");
}