import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_aplikasi/app/modules/home/views/chat_page.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Revindavn",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Konten utama halaman
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search bar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Nearby Laundry Text
                Text(
                  '1 Laundry Terdekat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),

                // Laundry Card
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: const Image(
                          image: AssetImage('images/gambar1.jpg'),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      // Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ida Laundry',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '4.8',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(Icons.star, color: Colors.white, size: 16),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Colors.white, size: 16),
                                Text(
                                  '0.5 km',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Tombol di kiri bawah
          Positioned(
            left: 16, // Jarak dari sisi kiri layar
            bottom: 16, // Jarak dari sisi bawah layar
            child: IconButton(
              icon: Icon(Icons.chat),
              iconSize: 48, // Ukuran ikon
              color: Colors.blue, // Warna ikon
              onPressed: () {
                // Aksi saat tombol di kiri bawah ditekan
                Get.to(ChatPage());
              },
            ),
          ),

          // Tombol di tengah bawah
          Positioned(
            bottom: 16, // Jarak dari sisi bawah layar
            left: MediaQuery.of(context).size.width / 2 -
                24, // Posisikan di tengah dengan menghitung setengah dari lebar layar dikurangi setengah ukuran tombol
            child: IconButton(
              icon: Icon(Icons.home),
              iconSize: 48, // Ukuran ikon
              color: Colors.blue, // Warna ikon
              onPressed: () {
                // Tetap di halaman Home, jadi tidak ada aksi navigasi yang diperlukan
                // Get.to() tidak diperlukan karena sudah berada di halaman Home
              },
            ),
          ),

          // Tombol di kanan bawah
          Positioned(
            right: 16,
            bottom: 16,
            child: IconButton(
              icon: Icon(Icons.h_plus_mobiledata_rounded),
              iconSize: 48, // Ukuran ikon
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
