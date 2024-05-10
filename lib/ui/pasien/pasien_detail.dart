import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_form.dart';
import '../../model/pasien.dart';
import 'pasien_update_form.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pasien"),
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
      body: Column(
        children: [
          _tabelPasien(),
          SizedBox(height: 20),
          Text(
            "ID Pasien : ${widget.pasien.id}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor Antrean: ${widget.pasien.nomorPasien}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
          SizedBox(height: 20),
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
          SizedBox(height: 20),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggalLahir}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor Telepon : ${widget.pasien.noTelp}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
          SizedBox(height: 20),
          Text(
            "Alamat : ${widget.pasien.alamatPasien}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasienUpdateForm(
                                  pasien: widget.pasien,
                                )));
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }

  _tabelPasien() {
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
