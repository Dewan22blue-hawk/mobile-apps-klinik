import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun UI
import '../../model/pegawai.dart'; // Mengimpor model Pegawai dari lokasi relatif
import 'pegawai_detail.dart'; // Mengimpor UI PegawaiDetail

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai; // Mendefinisikan objek Pegawai sebagai atribut

  const PegawaiUpdateForm({Key? key, required this.pegawai})
      : super(key: key); // Konstruktor untuk PegawaiUpdateForm

  @override
  _PegawaiUpdateFormState createState() =>
      _PegawaiUpdateFormState(); // Membuat instance dari _PegawaiUpdateFormState
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey =
      GlobalKey<FormState>(); // GlobalKey untuk mengelola state dari form
  final _namaPegawaiCtrl =
      TextEditingController(); // TextEditingController untuk mengelola input dari field nama pegawai

  @override
  void initState() {
    // Metode initState yang dipanggil saat widget pertama kali dibuat
    super.initState();
    _namaPegawaiCtrl.text = widget.pegawai.namaPegawai ??
        ''; // Mengatur nilai awal controller dari field nama pegawai
  }

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan form
    return Scaffold(
      // Scaffold sebagai layout utama
      appBar: AppBar(
          title: const Text("Ubah Data")), // AppBar dengan judul "Ubah Data"
      body: SingleChildScrollView(
        // SingleChildScrollView untuk membuat tampilan scrollable
        child: Form(
          // Form sebagai wadah untuk field input
          key: _formKey, // Menggunakan GlobalKey untuk form
          child: Column(
            // Column sebagai wadah untuk menampilkan widget secara vertikal
            children: [
              _fieldNamaPegawai(), // Memanggil metode untuk menampilkan field input nama pegawai
              SizedBox(height: 20), // Spasi vertikal
              _tombolSimpan() // Memanggil metode untuk menampilkan tombol simpan
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPegawai() {
    // Metode untuk menampilkan field input nama pegawai
    return TextField(
      // TextField untuk input teks
      decoration: InputDecoration(
          labelText: "Nama Data"), // Dekorasi field input nama pegawai
      controller:
          _namaPegawaiCtrl, // Menggunakan TextEditingController untuk mengelola input
    );
  }

  Widget _tombolSimpan() {
    // Metode untuk menampilkan tombol simpan
    return ElevatedButton(
      // ElevatedButton sebagai tombol dengan latar belakang yang ditinggikan
      onPressed: () {
        // Ketika tombol ditekan
        Pegawai pegawai = Pegawai(
            namaPegawai: _namaPegawaiCtrl
                .text); // Membuat objek Pegawai dengan data dari input nama pegawai
        Navigator.pop(context); // Menutup tampilan saat ini
        Navigator.pushReplacement(
          // Melakukan navigasi ke halaman PegawaiDetail dengan membawa data pegawai
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiDetail(
                pegawai: pegawai), // Membuat instance dari PegawaiDetail
          ),
        );
      },
      child: const Text("Simpan Perubahan"), // Teks pada tombol simpan
    );
  }
}
