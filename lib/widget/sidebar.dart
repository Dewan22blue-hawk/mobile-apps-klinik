import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/model/pasien.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_page.dart';
import '../ui/beranda.dart'; // Mengimpor halaman Beranda
import '../ui/login.dart'; // Mengimpor halaman Login
import '../ui/poli/poli_page.dart'; // Mengimpor halaman Poli
import '../ui/pegawai/pegawai_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // Padding untuk ListView
        children: [
          UserAccountsDrawerHeader(
              // Header drawer untuk akun pengguna
              accountName: Text("Admin"), // Nama akun pengguna
              accountEmail: Text("admin@admin.com")), // Email akun pengguna
          ListTile(
            leading: Icon(Icons.home), // Icon untuk navigasi ke Beranda
            title: Text("Beranda"), // Label navigasi ke Beranda
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Beranda())); // Navigasi ke halaman Beranda
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible), // Icon untuk navigasi ke Poli
            title: Text("Poli"), // Label navigasi ke Poli
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PoliPage())); // Navigasi ke halaman Poli
            },
          ),
          ListTile(
            leading:
                Icon(Icons.people), // Icon untuk navigasi ke halaman Pegawai
            title: Text("Pegawai"), // Label navigasi ke halaman Pegawai
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            }, // Tindakan ketika item di-tap (kosong untuk saat ini)
          ),
          ListTile(
            leading: Icon(Icons
                .account_box_sharp), // Icon untuk navigasi ke halaman Pasien
            title: Text("Pasien"), // Label navigasi ke halaman Pasien
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienPage(
                            pasien: Pasien(namaPasien: "wahyu"),
                          )));
            }, // Tindakan ketika item di-tap (kosong untuk saat ini)
          ),
          ListTile(
            leading:
                Icon(Icons.logout_rounded), // Icon untuk keluar dari aplikasi
            title: Text("Keluar"), // Label untuk keluar dari aplikasi
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Login()), // Navigasi ke halaman Login dan hapus halaman saat ini dari tumpukan
                  (Route<dynamic> route) => false);
            },
          )
        ],
      ),
    );
  }
}
