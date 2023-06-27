class Mahasiswa {
  int? nim;
  String? nama;
  String? jurusan;

  Mahasiswa({this.nim, this.nama, this.jurusan});

  factory Mahasiswa.fromJson(Map<String, dynamic> json) => Mahasiswa(
    nim: json['nim'],
    nama: json['nama'],
    jurusan: json['jurusan']
  );

  Map<String, dynamic> toJson() => {
    "nim": nim,
    "nama": nama,
    "jurusan": jurusan
  };
}