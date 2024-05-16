import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/model/pasien.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key})
      : super(key: key); // Konstruktor untuk PasienForm

  @override
  _PasienFormState createState() =>
      _PasienFormState(); // Membuat instance dari _PasienFormState
}

class _PasienFormState extends State<PasienForm> {
  final _formKey =
      GlobalKey<FormState>(); // GlobalKey untuk mengelola state dari form
  final _namaPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field nama pasien
  final _nomorPasien =
      TextEditingController(); // TextEditingController untuk mengelola input dari field nomor antrean pasien

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan form tambah pasien
    return Scaffold(
      // Scaffold sebagai layout utama
      appBar: AppBar(
          title: const Text(
              "Tambah Pasien")), // AppBar dengan judul "Tambah Pasien"
      body: SingleChildScrollView(
        // SingleChildScrollView untuk membuat tampilan scrollable
        child: Form(
          // Form sebagai wadah untuk field input
          key: _formKey, // Menggunakan GlobalKey untuk form
          child: Column(
            // Column sebagai wadah untuk menampilkan widget secara vertikal
            children: [
              _fieldNamaPasien(), // Menampilkan field input nama pasien
              SizedBox(
                  height:
                      20), // Jarak vertikal antara field nama pasien dan field nomor antrean pasien
              _fieldNomorPasien(), // Menampilkan field input nomor antrean pasien
              SizedBox(
                  height:
                      20), // Jarak vertikal antara field nomor antrean pasien dan tombol simpan
              _tombolSimpan() // Menampilkan tombol simpan
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() {
    // Metode untuk menampilkan field input nama pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _namaPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: const InputDecoration(
        // Dekorasi field input nama pasien
        labelText: 'Nama Pasien', // Label untuk field input nama pasien
      ),
    );
  }

  _fieldNomorPasien() {
    // Metode untuk menampilkan field input nomor antrean pasien
    return TextFormField(
      // TextFormField untuk input teks
      controller:
          _nomorPasien, // Menggunakan TextEditingController untuk mengelola input
      decoration: const InputDecoration(
        // Dekorasi field input nomor antrean pasien
        labelText:
            'Nomor Antrean Pasien', // Label untuk field input nomor antrean pasien
      ),
    );
  }

  _tombolSimpan() {
    // Metode untuk menampilkan tombol simpan
    return ElevatedButton(
      // ElevatedButton sebagai tombol dengan latar belakang yang ditinggikan
      onPressed: () {
        // Ketika tombol simpan ditekan
        Pasien pasien = new Pasien(
            // Membuat objek Pasien dengan data dari input nama pasien dan nomor antrean pasien
            namaPasien: _namaPasien.text,
            nomorPasien: _nomorPasien.text);
        Navigator.pushReplacement(
          // Melakukan navigasi ke halaman PasienDetail dengan membawa data pasien
          context,
          MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)),
        );
      },
      child: const Text("Simpan"), // Teks pada tombol simpan
    );
  }
}
