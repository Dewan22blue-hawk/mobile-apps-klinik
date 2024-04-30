// Import Flutter Material package untuk menggunakan widget dan komponen dari Flutter
import 'package:flutter/material.dart';

// Kelas PoliForm merupakan StatefulWidget untuk menampilkan formulir penambahan poli
class PoliForm extends StatefulWidget {
  // Konstruktor untuk PoliForm
  const PoliForm({Key? key}) : super(key: key);

  // Membuat state baru untuk PoliForm
  @override
  _PoliFormState createState() => _PoliFormState();
}

// Kelas _PoliFormState merupakan state dari PoliForm
class _PoliFormState extends State<PoliForm> {
  // Membuat global key untuk form
  final _formKey = GlobalKey<FormState>();

  // Metode build untuk menampilkan tampilan formulir
  @override
  Widget build(BuildContext context) {
    // Mengembalikan scaffold yang berisi formulir penambahan poli
    return Scaffold(
      // Menampilkan app bar dengan judul "Tambah Poli"
      appBar: AppBar(title: const Text("Tambah Poli")),
      // Menggunakan SingleChildScrollView untuk membuat tampilan scrollable
      body: SingleChildScrollView(
        // Menggunakan Form untuk mengelola formulir
        child: Form(
          key: _formKey, // Menetapkan kunci global ke form
          // Menampilkan kolom dengan field nama poli dan tombol simpan
          child: Column(
            children: [
              // Menampilkan TextField untuk input nama poli
              TextField(
                decoration: const InputDecoration(labelText: "Nama Poli"),
              ),
              // Menambahkan jarak antara field nama poli dan tombol simpan
              SizedBox(height: 20),
              // Menampilkan tombol simpan
              ElevatedButton(
                onPressed: () {}, // Menetapkan aksi untuk tombol simpan
                child: const Text("Simpan"), // Menetapkan teks tombol
              ),
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamePoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {}, // Menetapkan aksi untuk tombol simpan
      child: const Text("Simpan"), // Menetapkan teks tombol
    );
  }
}
