import 'package:flutter/material.dart';
import 'DetailPage.dart';
import 'dummy_data.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo, $username'),
        backgroundColor: Colors.green, // Warna hijau untuk app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Card yang bisa diklik
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman DetailUpn saat card ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );
              },
              child: const Card(
                color: Colors.green, // Warna hijau untuk card
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sudahkah kamu mengenal upn jogja?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'UPN Yogya itu favorit lhoo!!!',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Kenalan lebih jauh yuk',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Tulisan "List Fakultas UPNVYK" di samping kiri
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'List Fakultas UPNVYK',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: facultyList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.yellow, // Warna kuning untuk card
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              facultyList[index].imageUrls.last,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(facultyList[index].name),
                              Text(
                                  'Jumlah Jurusan: ${facultyList[index].numberOfMajors}'),
                              Text(
                                  'Jumlah Mahasiswa: ${facultyList[index].numberOfStudents}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
