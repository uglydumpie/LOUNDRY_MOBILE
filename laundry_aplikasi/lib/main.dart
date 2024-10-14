
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_aplikasi/app/modules/home/views/home_view.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Login App',
      home: HomeView(), 
      debugShowCheckedModeBanner: false,
    );
  }
}

