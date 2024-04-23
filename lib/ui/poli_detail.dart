import 'package:flutter/material.dart';
import '../model/poli.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli; // 1. Mendeklarasikan variabel poli dengan tipe Poli

  const PoliDetail(
      {Key? key,
      required this.poli}); // 2. Konstruktor untuk kelas PoliDetail dengan parameter poli yang wajib diisi

  @override
  State<PoliDetail> createState() =>
      _PoliDetailState(); // 3. Membuat dan mengembalikan objek _PoliDetailState
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Poli"),
        backgroundColor: Colors.blueAccent,
      ), // 4. Menampilkan judul "Detail Poli" pada AppBar
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Poli : ${widget.poli.namaPoli}", // 5. Menampilkan teks "Nama Poli : ...nama poli..." dengan menggunakan nilai dari widget.poli.namaPoli
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          DataTableExample(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                    "Ubah"), // 6. Membuat tombol dengan teks "Ubah" yang berwarna hijau
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                    "Hapus"), // 7. Membuat tombol dengan teks "Hapus" yang berwarna merah
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Role',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Denny')),
            DataCell(Text('20')),
            DataCell(Text('Doctoral')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Wahyu')),
            DataCell(Text('21')),
            DataCell(Text('Professor')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Falah')),
            DataCell(Text('22')),
            DataCell(Text('Associate Professor')),
          ],
        ),
      ],
    );
  }
}
