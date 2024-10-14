import 'package:get/get.dart';

class LaundryController extends GetxController {
  // State for the laundry list
  var laundryList = <Laundry>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchLaundryData(); // Fetch laundry data on initialization
  }

  void fetchLaundryData() {
    // Sample data for demonstration
    laundryList.addAll([
      Laundry(name: "Ida Laundry", rating: 4.8, distance: "0.5 km", imageUrl: "assets/images/laundry.jpg"),
      // Add more laundry items if needed
    ]);
  }
}

// Model for Laundry
class Laundry {
  String name;
  double rating;
  String distance;
  String imageUrl;

  Laundry({required this.name, required this.rating, required this.distance, required this.imageUrl});
}
