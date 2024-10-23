import 'package:flutter/material.dart';

class BerandaAdmin extends StatelessWidget {
  const BerandaAdmin({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selamat Datang, Admin'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('images/admin.png'),
            ),
            onPressed: () {
              // Tambahkan logika untuk membuka profil admin
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              children: [
                _buildMenuItem(Icons.dashboard, 'Dashboard', () {
                  // Logika untuk membuka dashboard
                }),
                _buildMenuItem(Icons.report, 'Kelola Pengaduan', () {
                  // Logika untuk membuka halaman kelola pengaduan
                }),
                _buildMenuItem(Icons.article, 'Berita', () {
                  // Logika untuk membuka halaman berita
                }),
                _buildMenuItem(Icons.web, 'Profil Web', () {
                  // Logika untuk membuka halaman profil web
                }),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Informasi Terbaru',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/rapat.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun item menu
  Widget _buildMenuItem(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.black54),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

