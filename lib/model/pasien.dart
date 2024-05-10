class Pasien {
  String? id;
  String? namaPasien;
  String? nomorPasien;
  String? tanggalLahir;
  String? noTelp;
  String? alamatPasien;
  Pasien(
      {this.id,
      required this.namaPasien,
      this.nomorPasien,
      this.tanggalLahir,
      this.alamatPasien,
      this.noTelp});
  get idPasien => 'id';
  get nomor_rm => 'nomor rm';
  get tanggal_lahir => 'tanggal lahir';
  get nomor_telepon => 'nomor telepon';
  get alamat => 'alamat';
}
