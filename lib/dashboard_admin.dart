import 'package:flutter/material.dart';

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardAdminScreenState createState() => _DashboardAdminScreenState();
}

class _DashboardAdminScreenState extends State<DashboardAdmin> {
  // Variabel untuk menyimpan jumlah diterima, ditolak, pengguna, dan blok
  int diterima = 30;
  int ditolak = 10;
  int pengguna = 100;
  int blok = 5;

  // Fungsi untuk update jumlah secara simulatif
  void updateData() {
    setState(() {
      diterima += 1;
      ditolak += 1;
      pengguna += 1;
      blok += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Tambahkan aksi kembali jika diperlukan
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatCard('Diterima', diterima, Icons.check_circle, Colors.green),
            _buildStatCard('Ditolak', ditolak, Icons.cancel, Colors.red),
            _buildStatCard('Pengguna', pengguna, Icons.person, Colors.blue),
            _buildStatCard('Blok', blok, Icons.block, Colors.black),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: updateData,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text('Update Data', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat widget kartu statistik
  Widget _buildStatCard(String title, int count, IconData icon, Color color) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Icon(icon, size: 40, color: color),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        trailing: Text(
          count.toString(),
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// Bagian Main dan runApp di bawah
void main() {
  runApp(const MaterialApp(
    home: DashboardAdmin(),
  ));
}
