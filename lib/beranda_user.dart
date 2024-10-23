import 'package:flutter/material.dart';
import 'package:myapp/informasi_desa.dart';
import 'package:myapp/lapor_keluhan.dart';
import 'package:myapp/review_laporan.dart';
import 'package:myapp/profil_user.dart'; // Tambahkan ini untuk halaman ProfilUser

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BerandaUser(),
  );
}

class BerandaUser extends StatelessWidget {
  const BerandaUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Selamat Datang,\ndi Lapor-in",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman ProfilUser saat gambar profil ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileUser(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                          'images/userr.png'), // Ganti dengan path gambar profilmu
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildMenuCard(
                    context: context,
                    halaman: const LaporKeluhan(),
                    imagePath: 'images/laporan.png', // Gambar PNG untuk menu
                    label: "Lapor Keluhan",
                  ),
                  buildMenuCard(
                    context: context,
                    halaman: const ReviewLaporan(),
                    imagePath: 'images/infolap.png', // Gambar PNG untuk menu
                    label: "Informasi Laporan",
                  ),
                  buildMenuCard(
                    context: context,
                    halaman: const LaporKeluhan(),
                    imagePath: 'images/kotakmasuk.png', // Gambar PNG untuk menu
                    label: "Kotak Masuk",
                  ),
                  buildMenuCard(
                    context: context,
                    halaman: const InformasiDesaScreen(),
                    imagePath: 'images/desa.png', // Gambar PNG untuk menu
                    label: "Informasi Desa",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Informasi Terbaru",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'images/rapat.png'), // Ganti dengan path gambar informasi terbaru
                    fit: BoxFit.cover, // Gaya gambar agar memenuhi container
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuCard({
    required String imagePath, // Ganti dari IconData menjadi imagePath
    required String label,
    required BuildContext context,
    required Widget halaman,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => halaman),
        );
      },
      child: Card(
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40, // Atur ukuran gambar
            ),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
