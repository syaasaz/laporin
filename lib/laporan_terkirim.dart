import 'package:flutter/material.dart';
import 'package:myapp/beranda_user.dart'; // Pastikan Anda mengimpor halaman BerandaUser

class LaporanTerkirim extends StatelessWidget {
  const LaporanTerkirim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Warna latar belakang putih
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar tanda centang
              Image.asset(
                'images/check.png', // Pastikan Anda memiliki gambar di folder assets
                width: 300, // Sesuaikan ukuran gambar
                height: 300,
              ),
              const SizedBox(height: 5),
              // Teks "Laporan Anda Terkirim"
              const Text(
                'Laporan Anda Terkirim',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              // Tombol "SELESAI"
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman BerandaUser ketika tombol ditekan
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BerandaUser(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.grey, // Warna tombol menggunakan backgroundColor
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text(
                  'SELESAI',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

