import 'package:flutter/material.dart';
import 'package:myapp/foto_bukti.dart';

class LaporKeluhan extends StatefulWidget {
  const LaporKeluhan({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LaporKeluhanPageState createState() => _LaporKeluhanPageState();
}

class _LaporKeluhanPageState extends State<LaporKeluhan> {
  final TextEditingController subjekController = TextEditingController(); // Controller untuk input subjek
  final TextEditingController keluhanController = TextEditingController(); // Controller untuk input keluhan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.redAccent, // Warna latar belakang sesuai screenshot
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Center(
              child: Text(
                "Silahkan masukkan keluhan",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            
            // Teks Subjek di atas TextField
            const Text(
              "Subjek", // Teks di atas TextField
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8), // Jarak antara teks dan TextField
            TextField(
              controller: subjekController, // TextField untuk input subjek
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Masukkan subjek keluhan...',
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20),

            // Teks Keluhan di atas TextField
            const Text(
              "Keluhan", // Teks di atas TextField untuk keluhan
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8), // Jarak antara teks dan TextField
            TextField(
              controller: keluhanController, // TextField untuk input keluhan
              maxLines: 6, // Memungkinkan input multi-line
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Tulis keluhan Anda di sini...',
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 30),

            // Tombol Lanjut
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    String subjek = subjekController.text; // Ambil teks dari TextField subjek
                    String keluhan = keluhanController.text; // Ambil teks dari TextField keluhan

                    if (subjek.isNotEmpty && keluhan.isNotEmpty) {
                      // Aksi yang akan dijalankan ketika tombol ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BuktiPengaduanPage(
                            subjek: subjek,
                            keluhan: keluhan,
                          ),
                        ),
                      );
                    } else {
                      // Menampilkan pesan error jika field kosong
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Harap isi semua field"),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[700], // Warna tombol
                  ),
                  child: const Text(
                    "LANJUT",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

