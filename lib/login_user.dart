import 'package:flutter/material.dart';
import 'package:myapp/beranda.dart';
import 'package:myapp/daftar.dart';
import 'package:myapp/lupa_kata_sandi.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(top: 30.0, left: 20.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Mengatur teks agar rata kiri
          children: [
            Image.asset('images/logo.png', width: 150), // Gambar
            const SizedBox(height: 10), // Jarak antara gambar dan teks
            const Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white, // Warna teks
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Untuk Pengaduan, \nsilahkan login terlebih dahulu',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white, // Warna teks
              ),
            ),
            const SizedBox(height: 20), // Jarak antara teks dan textbox

            // Teks di atas TextField
            const Text(
              'Nomor Telepon', // Teks yang ditambahkan di atas textbox
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5), // Jarak antara teks dan textbox
            // Mengatur jarak TextField dengan batas kanan
            Container(
              margin:
                  const EdgeInsets.only(right: 20.0), // Jarak kanan 20 piksel
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Masukkan nomor telepon',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Sudut textbox
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kata Sandi', // Teks yang ditambahkan di atas textbox
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5), // Jarak antara teks dan textbox
            // Mengatur jarak TextField dengan batas kanan
            Container(
              margin:
                  const EdgeInsets.only(right: 20.0), // Jarak kanan 20 piksel
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Masukkan kata sandi',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Sudut textbox
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Mengatur konten di kanan
              children: [
                TextButton(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LupaSandi()),
                    );
                  },
                  child: const Text(
                    'Lupa Kata Sandi?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 350, // Lebar tombol
              height: 50, // Tinggi tombol
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman baru
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Beranda()),
            );
                },
                style: ElevatedButton.styleFrom(),
                child: const Text(
                  'MASUK',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Mengatur konten di kanan
              children: [
                TextButton(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Daftar()),
                    );
                  },
                  child: const Text(
                    'Apakah anda belum punya akun? Daftar disini',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
