import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/model/pasien.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({Key? key, required this.pasien})
      : super(key: key); // Konstruktor untuk PasienUpdateForm

  @override
  _PasienUpdateFormState createState() =>
      _PasienUpdateFormState(); // Membuat instance dari _PasienUpdateFormState
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey =
      GlobalKey<FormState>(); // GlobalKey untuk mengelola state dari form
  final _idPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field ID pasien
  final _nomorPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field nomor antrean pasien
  final _namaPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field nama pasien
  final _alamatPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field alamat pasien
  final _noHpPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field nomor HP pasien
  final _ttlPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field tanggal lahir pasien

  @override
  void initState() {
    // Metode yang dipanggil ketika widget pertama kali dibuat
    super.initState();
    setState(() {
      _namaPasien.text = widget
          .pasien.namaPasien!; // Mengatur nilai teks pada field nama pasien
    });
  }

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan PasienUpdateForm
    return Scaffold(
      // Scaffold sebagai layout utama
      appBar: AppBar(
        // AppBar sebagai bagian atas tampilan
        title: Text("Ubah Data Pasien"), // Judul AppBar
      ),
      body: Form(
        // Form sebagai wadah untuk field input
        key: _formKey, // Menggunakan GlobalKey untuk form
        child: Column(
          // Column sebagai wadah untuk menampilkan widget secara vertikal
          children: [
            _fieldIDPasien(), // Memanggil metode untuk menampilkan field input ID pasien
            SizedBox(
              // Widget untuk menambahkan spasi vertikal
              height: 20,
            ),
            _fieldNamaPasien(), // Memanggil metode untuk menampilkan field input nama pasien
            SizedBox(
              // Widget untuk menambahkan spasi vertikal
              height: 20,
            ),
            _fieldNomorPasien(), // Memanggil metode untuk menampilkan field input nomor antrean pasien
            SizedBox(
              // Widget untuk menambahkan spasi vertikal
              height: 20,
            ),
            _fieldAlamatPasien(), // Memanggil metode untuk menampilkan field input alamat pasien
            SizedBox(
              // Widget untuk menambahkan spasi vertikal
              height: 20,
            ),
            _fieldnoHpPasien(), // Memanggil metode untuk menampilkan field input nomor HP pasien
            SizedBox(
              // Widget untuk menambahkan spasi vertikal
              height: 20,
            ),
            _fieldTtlPasien(), // Memanggil metode untuk menampilkan field input tanggal lahir pasien
            SizedBox(
              // Widget untuk menambahkan spasi vertikal
              height: 20,
            ),
            _tombolSimpan(), // Memanggil metode untuk menampilkan tombol simpan
          ],
        ),
      ),
    );
  }

  _fieldIDPasien() {
    // Metode untuk menampilkan field input ID pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _idPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: InputDecoration(
        // Dekorasi field input ID pasien
        labelText: "ID Pasien",
      ),
    );
  }

  _fieldNomorPasien() {
    // Metode untuk menampilkan field input nomor antrean pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _nomorPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: InputDecoration(
        // Dekorasi field input nomor antrean pasien
        labelText: "Nomor Antrean Pasien",
      ),
    );
  }

  _fieldNamaPasien() {
    // Metode untuk menampilkan field input nama pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _namaPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: InputDecoration(
        // Dekorasi field input nama pasien
        labelText: "Nama Pasien",
      ),
    );
  }

  _fieldTtlPasien() {
    // Metode untuk menampilkan field input tanggal lahir pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _ttlPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: InputDecoration(
        // Dekorasi field input tanggal lahir pasien
        labelText: "Tanggal Lahir",
      ),
    );
  }

  _fieldnoHpPasien() {
    // Metode untuk menampilkan field input nomor HP pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _noHpPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: InputDecoration(
        // Dekorasi field input nomor HP pasien
        labelText: "No HP Pasien",
      ),
    );
  }

  _fieldAlamatPasien() {
    // Metode untuk menampilkan field input alamat pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _alamatPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: InputDecoration(
        // Dekorasi field input alamat pasien
        labelText: "Alamat Pasien",
      ),
    );
  }

  _tombolSimpan() {
    // Metode untuk menampilkan tombol simpan
    return ElevatedButton(
      // ElevatedButton sebagai tombol dengan latar belakang yang ditinggikan
      onPressed: () {
        // Ketika tombol ditekan
        Navigator.push(
          // Melakukan navigasi ke halaman PasienDetail dengan membawa data pasien yang telah diubah
          context,
          MaterialPageRoute(
              builder: (context) => PasienDetail(
                      pasien: Pasien(
                    namaPasien: _namaPasien.text,
                    nomorPasien: _nomorPasien.text,
                    tanggalLahir: _ttlPasien.text,
                    noTelp: _noHpPasien.text,
                    id: _idPasien.text,
                    alamatPasien: _alamatPasien.text,
                  ))),
        );
      },
      child: Text("Simpan"), // Teks pada tombol simpan
    );
  }

  _tombolHapus() {
    // Metode untuk menampilkan tombol hapus
    return ElevatedButton(
      // ElevatedButton sebagai tombol dengan latar belakang yang ditinggikan
      onPressed: () {
        // Ketika tombol ditekan
        Navigator.pop(context); // Menutup halaman formulir
      },
      child: Text("Hapus"), // Teks pada tombol hapus
    );
  }
}
