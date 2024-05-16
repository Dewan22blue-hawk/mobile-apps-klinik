import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_form.dart';
import 'package:klinik_mobile_apps/ui/poli/poli_page.dart';
import 'package:klinik_mobile_apps/widget/sidebar.dart';

import '../../model/pasien.dart';

import '../pasien/pasien_item.dart';

class PasienPage extends StatefulWidget {
  final Pasien pasien;

  const PasienPage(
      {super.key, required this.pasien}); // Konstruktor untuk PasienPage

  @override
  State<PasienPage> createState() =>
      _PasienPageState(); // Membuat instance dari _PasienPageState
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan PasienPage
    return Scaffold(
      // Scaffold sebagai layout utama
      drawer: Sidebar(), // Sidebar sebagai drawer di sebelah kiri
      appBar: AppBar(
        // AppBar sebagai bagian atas tampilan
        title: const Text("Data RS"), // Judul AppBar
        actions: [
          // Menambahkan widget di sebelah kanan AppBar
          GestureDetector(
            // GestureDetector untuk menangani gesture onTap
            child: Container(
              // Container sebagai wadah ikon tambah
              child: const Icon(Icons.add), // Ikon tambah
              padding: EdgeInsets.all(
                  20), // Padding untuk mengatur jarak dari tepi kontainer
            ),
            onTap: () {
              // Ketika kontainer ditekan
              Navigator.push(
                  context, // Melakukan navigasi ke halaman PasienForm untuk menambahkan pasien baru
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        // ListView sebagai tampilan daftar yang dapat discroll
        children: [
          PasienItem(
              pasien: Pasien(
                  namaPasien:
                      "Belum ada")), // Menampilkan item pasien default jika belum ada data
          GestureDetector(
              // GestureDetector untuk menangani gesture onTap
              child: Card(
                // Card sebagai wadah informasi
                child: ListTile(
                    title: Text(
                        "Pasien")), // ListTile untuk menampilkan teks "Pasien"
              ),
              onTap: () {
                // Ketika Card ditekan
                Navigator.push(
                    context, // Melakukan navigasi ke halaman PoliPage untuk menampilkan daftar poli
                    MaterialPageRoute(builder: (context) => PoliPage()));
              }),
          _tabelPasien(), // Menampilkan tabel pasien
        ],
      ),
    );
  }

  Widget _tabelPasien() {
    // Metode untuk menampilkan tabel pasien
    return DataTable(
      // DataTable sebagai wadah untuk menampilkan data dalam bentuk tabel
      columns: const <DataColumn>[
        // Mendefinisikan kolom-kolom pada tabel
        DataColumn(
          // DataColumn sebagai tampilan header kolom
          label: Expanded(
            // Expanded untuk menyesuaikan lebar kolom
            child: Text(
              // Text untuk menampilkan teks pada header kolom
              'ID Pasien', // Teks untuk header kolom ID Pasien
              style: TextStyle(
                  fontStyle:
                      FontStyle.italic), // Mengatur gaya teks menjadi italic
            ),
          ),
        ),
        DataColumn(
          // DataColumn untuk kolom nama pasien
          label: Expanded(
            // Expanded untuk menyesuaikan lebar kolom
            child: Text(
              // Text untuk menampilkan teks pada header kolom
              'Nama Pasien', // Teks untuk header kolom Nama Pasien
              style: TextStyle(
                  fontStyle:
                      FontStyle.italic), // Mengatur gaya teks menjadi italic
            ),
          ),
        ),
        DataColumn(
          // DataColumn untuk kolom nomor antrean pasien
          label: Expanded(
            // Expanded untuk menyesuaikan lebar kolom
            child: Text(
              // Text untuk menampilkan teks pada header kolom
              'Nomor Antrean', // Teks untuk header kolom Nomor Antrean
              style: TextStyle(
                  fontStyle:
                      FontStyle.italic), // Mengatur gaya teks menjadi italic
            ),
          ),
        ),
        DataColumn(
          // DataColumn untuk kolom tanggal lahir pasien
          label: Expanded(
            // Expanded untuk menyesuaikan lebar kolom
            child: Text(
              // Text untuk menampilkan teks pada header kolom
              'Tanggal Lahir', // Teks untuk header kolom Tanggal Lahir
              style: TextStyle(
                  fontStyle:
                      FontStyle.italic), // Mengatur gaya teks menjadi italic
            ),
          ),
        ),
        DataColumn(
          // DataColumn untuk kolom alamat pasien
          label: Expanded(
            // Expanded untuk menyesuaikan lebar kolom
            child: Text(
              // Text untuk menampilkan teks pada header kolom
              'Alamat', // Teks untuk header kolom Alamat
              style: TextStyle(
                  fontStyle:
                      FontStyle.italic), // Mengatur gaya teks menjadi italic
            ),
          ),
        ),
        DataColumn(
          // DataColumn untuk kolom nomor telepon pasien
          label: Expanded(
            // Expanded untuk menyesuaikan lebar kolom
            child: Text(
              // Text untuk menampilkan teks pada header kolom
              'Nomor Telepon', // Teks untuk header kolom Nomor Telepon
              style: TextStyle(
                  fontStyle:
                      FontStyle.italic), // Mengatur gaya teks menjadi italic
            ),
          ),
        ),
      ],
      rows: <DataRow>[
        // Mendefinisikan baris-baris pada tabel
        DataRow(
          // DataRow sebagai baris data dalam tabel
          cells: <DataCell>[
            // Menyediakan sel-sel data dalam baris
            DataCell(Text(
              // DataCell untuk menampilkan data ID pasien
              widget.pasien.id
                  .toString(), // Mengonversi ID pasien menjadi string dan menampilkannya
            )),
            DataCell(Text(widget.pasien.namaPasien
                .toString())), // DataCell untuk menampilkan data nama pasien
            DataCell(Text(widget.pasien.nomorPasien
                .toString())), // DataCell untuk menampilkan data nomor antrean pasien
            DataCell(Text(widget.pasien.tanggalLahir
                .toString())), // DataCell untuk menampilkan data tanggal lahir pasien
            DataCell(Text(widget.pasien.alamatPasien
                .toString())), // DataCell untuk menampilkan data alamat pasien
            DataCell(Text(widget.pasien.noTelp
                .toString())), // DataCell untuk menampilkan data nomor telepon pasien
          ],
        ),
      ],
    );
  }
}
