import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_form.dart';
import 'package:klinik_mobile_apps/ui/poli/poli_page.dart';
import 'package:klinik_mobile_apps/widget/sidebar.dart';

import '../../model/pasien.dart';

import '../pasien/pasien_item.dart';

class PasienPage extends StatefulWidget {
  final Pasien pasien;
  const PasienPage({super.key, required this.pasien});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data RS"),
        actions: [
          GestureDetector(
            child: Container(
              child: const Icon(Icons.add),
              padding: EdgeInsets.all(20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(pasien: Pasien(namaPasien: "Belum ada")),
          // PoliItem(poli: Poli(namaPoli: "Poli")),

          GestureDetector(
              child: Card(
                child: ListTile(title: Text("Pasien")),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PoliPage()));
              }),
          _tabelPasien(),
        ],
      ),
    );
  }

  Widget _tabelPasien() {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'ID Pasien',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Nama Pasien',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Nomor Antrean',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Tanggal Lahir',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Alamat',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Nomor Telepon',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              widget.pasien.id.toString(),
            )),
            DataCell(Text(widget.pasien.namaPasien.toString())),
            DataCell(Text(widget.pasien.nomorPasien.toString())),
            DataCell(Text(widget.pasien.tanggalLahir.toString())),
            DataCell(Text(widget.pasien.alamatPasien.toString())),
            DataCell(Text(widget.pasien.noTelp.toString())),
          ],
        ),
      ],
    );
  }
}
