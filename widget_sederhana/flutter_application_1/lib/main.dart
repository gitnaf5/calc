import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Bertingkat dengan ListView"),
          centerTitle: true, // Membuat judul berada di tengah
          backgroundColor: Colors.blue,
        ),
        body: const ContentList(), // Memanggil widget terpisah
      ),
    );
  }
}

class ContentList extends StatelessWidget {
  const ContentList({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar item yang berisi gambar dan teks
    List<Map<String, String>> items = [
      {
        "image": "assets/images/60.jpg",
        "title": "SAYA ",
        "description": "Memoji saya."
      },
      {
        "image": "assets/images/61.jpg",
        "title": "SANDY",
        "description": "sandy pertama."
      },
      {
        "image": "assets/images/63.jpg",
        "title": "SANDY",
        "description": "sandy kedua."
      },
    ];

    return ListView.builder(
      itemCount: items.length, // Jumlah item dalam list
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  items[index]["image"]!, // Memanggil gambar berdasarkan index
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Text(
                  items[index]["title"]!, // Menampilkan teks sesuai index
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  items[index]["description"]!, // Menampilkan deskripsi
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
