import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/foto_bukti.dart';
import 'package:myapp/laporan_terkirim.dart';

// ReviewLaporan Stateless Widget
class ReviewLaporan extends StatelessWidget {
  const ReviewLaporan({super.key});

  void _submitReport(BuildContext context) {
    // Logika ketika tombol Kirim Laporan ditekan
    
    // Navigasi ke halaman LaporanTerkirim
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LaporanTerkirim()),
    );
  }

  void _cancelReport(BuildContext context) {
    // Logika ketika tombol Batalkan ditekan
    if (kDebugMode) {
      print("Laporan dibatalkan");
    }
    // Navigasi ke halaman BuktiPengaduanPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BuktiPengaduanPage(subjek: "", keluhan: "")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.person, size: 40), // Icon profil
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Laura', // Nama
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16), // Icon lokasi
                        SizedBox(width: 5),
                        Text(
                          'Tipes, Serengan', // Lokasi
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Subjek : Pemadaman Listrik', // Subject laporan
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Selamat pagi ...\n'
              'Saya mau melaporkan kejadian yang cukup meresahkan beberapa kali ini.\n'
              'Listrik desa sering mati dari kemarin banyak aktivitas yang terganggu dengan permasalahan ini, mohon diperbaiki segera.\n'
              'Terima kasih.', // Isi laporan
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Foto Bukti', // Placeholder untuk foto bukti
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Button Bar
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                ElevatedButton(
                  onPressed: () => _submitReport(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Warna tombol
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  child: const Text(
                    'KIRIM LAPORAN',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _cancelReport(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Warna tombol batalkan
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  child: const Text(
                    'BATALKAN',
                    style: TextStyle(fontSize: 16, color: Colors.white),
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
