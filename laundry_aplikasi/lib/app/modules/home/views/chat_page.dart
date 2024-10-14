import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image; // Variabel untuk menyimpan gambar yang dipilih

  // Fungsi untuk memilih gambar dari kamera atau galeri
  Future<void> _pickImage() async {
    // Menampilkan dialog untuk memilih sumber gambar
    final String? source = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose Image Source'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(ImageSource.camera.toString()),
              child: Text('Camera'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(ImageSource.gallery.toString()),
              child: Text('Gallery'),
            ),
          ],
        );
      },
    );

    if (source != null) {
      ImageSource imageSource = source == ImageSource.camera.toString()
          ? ImageSource.camera
          : ImageSource.gallery;

      // Menggunakan Image Picker untuk memilih gambar dari sumber yang dipilih
      try {
        final XFile? image = await _picker.pickImage(source: imageSource);
        if (image != null) {
          setState(() {
            _image = image; // Menyimpan gambar yang dipilih
          });
        }
      } catch (e) {
        print("Error picking image: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Chat Page'),
            SizedBox(height: 20),
            // Menampilkan gambar jika sudah dipilih
            _image != null
                ? Image.file(
                    File(_image!.path),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Container(), // Jika belum ada gambar, tampilkan Container kosong
            SizedBox(height: 20),
            // Tombol untuk memilih gambar
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick an Image'),
            ),
          ],
        ),
      ),
    );
  }
}
