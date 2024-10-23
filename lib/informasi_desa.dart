import 'package:flutter/material.dart';

 
class InformasiDesaScreen extends StatelessWidget {
  const InformasiDesaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Warna latar belakang pink
      appBar: AppBar(
        backgroundColor: Colors.redAccent, // Warna latar belakang AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            // Aksi ketika tombol kembali ditekan
          },
        ),
        title: const Text(
          'Informasi Desa',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar asli PNG dari assets
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                'images/tipesska.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            // Deskripsi mengenai kelurahan
            const Text(
              'Kelurahan Tipes adalah sebuah kelurahan di kecamatan Serengan, Surakarta. '
              'Luasnya mencapai 64 hektare. Pada tahun 2020, kelurahan ini berpenduduk 12.318 jiwa.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            // Informasi detail
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Provinsi',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Kecamatan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Kode BPS',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Kode Kemendagri',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Kodepos',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Kota',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(': Jawa Tengah'),
                      Text(': Serengan'),
                      Text(': 3372020004'),
                      Text(': 33.72.02.1004'),
                      Text(': 57154'),
                      Text(': Surakarta'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
