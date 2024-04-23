import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage(
      {Key? key}); // 1. Deklarasi kelas PoliPage yang merupakan StatefulWidget

  @override
  State<PoliPage> createState() =>
      _PoliPageState(); // 2. Membuat dan mengembalikan objek _PoliPageState
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "Data Poli",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.local_hospital,
                  size: 32,
                  color: Colors.white,
                ))
          ],
        ),
        backgroundColor: Colors.blueAccent,
        titleTextStyle: TextStyle(color: Colors.white),
      ), // 4. Menampilkan judul "Detail Poli" pada AppBar, // 3. Menampilkan judul "Data Poli" pada AppBar
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text(
                    "Poli Anak"), // 4. Menampilkan teks "Poli Anak" di dalam ListTile
              ),
            ),
            onTap: () {
              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text(
                    "Poli Kandungan"), // 5. Menampilkan teks "Poli Kandungan" di dalam ListTile
              ),
            ),
            onTap: () {
              Poli poliKandungan = new Poli(namaPoli: "Poli Kandungan");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliKandungan)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text(
                    "Poli Gigi"), // 6. Menampilkan teks "Poli Gigi" di dalam ListTile
              ),
            ),
            onTap: () {
              Poli poliGigi = new Poli(namaPoli: "Poli Gigi Dokter Gigi");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliGigi)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text(
                    "Poli THT"), // 7. Menampilkan teks "Poli THT" di dalam ListTile
              ),
            ),
            onTap: () {
              Poli poliTht = new Poli(namaPoli: "Poli THT");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliTht)));
            },
          ),
        ],
      ),
    );
  }
}
