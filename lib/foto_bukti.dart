import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:myapp/lapor_keluhan.dart';
import 'package:myapp/review_laporan.dart';

// BuktiPengaduanPage Stateful Widget
class BuktiPengaduanPage extends StatefulWidget {
  final String subjek;
  final String keluhan;

  const BuktiPengaduanPage({
    super.key,
    required this.subjek,
    required this.keluhan,
  });

  @override
  // ignore: library_private_types_in_public_api
  _BuktiPengaduanPageState createState() => _BuktiPengaduanPageState();
}

class _BuktiPengaduanPageState extends State<BuktiPengaduanPage> {
  File? _image; // Variable to store the selected image
  final ImagePicker _picker = ImagePicker(); // Image picker instance

  // Function to pick an image from the gallery
  Future<void> _pickImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      setState(() {
        if (pickedFile != null) {
          _image = File(pickedFile.path); // Store the image as a File object
        } else {
          if (kDebugMode) {
            print('No image selected.');
          }
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error picking image: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.redAccent, // Background color similar to the screenshot
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Lampirkan foto bukti pengaduan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            // Container for the image or a placeholder
            GestureDetector(
              onTap: _pickImage, // Trigger image picker on tap
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.black),
                ),
                child: _image == null
                    ? Center(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[700],
                          size: 50,
                        ),
                      )
                    : Image.file(
                        _image!,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const SizedBox(height: 30),

            // "LANJUT" and "BATALKAN" buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman LaporKeluhan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReviewLaporan()),
                
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button color
                  ),
                  child: const Text(
                    "LANJUT",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman LaporanTerkirim
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LaporKeluhan(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[500], // Button color for "BATALKAN"
                  ),
                  child: const Text(
                    "BATALKAN",
                    style: TextStyle(color: Colors.white),
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

