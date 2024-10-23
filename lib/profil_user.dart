import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileUser(),
    );
  }
}

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});
  
  get logger => null;

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
          'Profil',
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
            // Field Nama
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nama',
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Field Nomor Telepon
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Field Password
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Field Konfirmasi Password
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Konfirmasi Password',
                border: UnderlineInputBorder(),
              ),
            ),
            const Spacer(),
            // Tombol Simpan Perubahan
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol Simpan Perubahan ditekan
                 {
                  logger.info('Simpan Perubahan');
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.symmetric(vertical: 15),
                minimumSize: const Size(double.infinity, 50), // Lebar tombol memenuhi layar
              ),
              child: const Text(
                'SIMPAN PERUBAHAN',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

