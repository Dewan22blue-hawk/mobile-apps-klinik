import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/model/pasien.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;
  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _idPasien = TextEditingController();
  final _nomorPasien = TextEditingController();
  final _namaPasien = TextEditingController();
  final _alamatPasien = TextEditingController();
  final _noHpPasien = TextEditingController();
  final _ttlPasien = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPasien.text = widget.pasien.namaPasien!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubah Data Pasien"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            _fieldIDPasien(),
            SizedBox(
              height: 20,
            ),
            _fieldNamaPasien(),
            SizedBox(
              height: 20,
            ),
            _fieldNomorPasien(),
            SizedBox(
              height: 20,
            ),
            _fieldAlamatPasien(),
            SizedBox(
              height: 20,
            ),
            _fieldnoHpPasien(),
            SizedBox(
              height: 20,
            ),
            _fieldTtlPasien(),
            SizedBox(
              height: 20,
            ),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _fieldIDPasien() {
    return TextFormField(
      controller: _idPasien,
      decoration: InputDecoration(
        labelText: "ID Pasien",
      ),
    );
  }

  _fieldNomorPasien() {
    return TextFormField(
      controller: _nomorPasien,
      decoration: InputDecoration(
        labelText: "Nomor Antrean Pasien",
      ),
    );
  }

  _fieldNamaPasien() {
    return TextFormField(
      controller: _namaPasien,
      decoration: InputDecoration(
        labelText: "Nama Pasien",
      ),
    );
  }

  _fieldTtlPasien() {
    return TextFormField(
      controller: _ttlPasien,
      decoration: InputDecoration(
        labelText: "Tanggal Lahir",
      ),
    );
  }

  _fieldnoHpPasien() {
    return TextFormField(
      controller: _noHpPasien,
      decoration: InputDecoration(
        labelText: "No HP Pasien",
      ),
    );
  }

  _fieldAlamatPasien() {
    return TextFormField(
      controller: _alamatPasien,
      decoration: InputDecoration(
        labelText: "Alamat Pasien",
      ),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
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
      child: Text("Simpan"),
    );
  }

  _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Hapus"),
    );
  }
}
