import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/model/pasien.dart';
import 'package:klinik_mobile_apps/ui/pasien/pasien_detail.dart';

class PasienForm extends StatefulWidget {
  // const PasienForm({super.key});
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();

  // @override
  // State<PasienForm> createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPasien = TextEditingController();
  final _nomorPasien = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPasien(),
              SizedBox(height: 20),
              _fieldNomorPasien(), //
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() {
    return TextFormField(
      controller: _namaPasien,
      decoration: const InputDecoration(
        labelText: 'Nama Pasien',
      ),
    );
  }

  _fieldNomorPasien() {
    return TextFormField(
      controller: _nomorPasien,
      decoration: const InputDecoration(
        labelText: 'Nomor AntreanPasien',
      ),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pasien pasien = new Pasien(
            namaPasien: _namaPasien.text, nomorPasien: _nomorPasien.text);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)),
        );
      },
      child: const Text("Simpan"),
    );
  }
}
