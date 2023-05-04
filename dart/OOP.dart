class Person{
  String _nama;
  String _alamat;

  Person (this._nama, this._alamat);
  String getNama(){
    return _nama;
  }
  void setNama(String nama){
    this._nama = nama;
  }
  String getAlamat(){
    return _alamat;
  }
  void setAlamat(String alamat){
    this._alamat = alamat;
  }
}

void main(){
  Person bio = new Person("Luthfi Nur Ramadhan", "Jl. Madesa Rt.05 Rw.11 Blok.K No.21 Bandung Jawa Barat");
  print("Nama : ${bio.getNama()}");
  print("Alamat : ${bio.getAlamat()}");
}