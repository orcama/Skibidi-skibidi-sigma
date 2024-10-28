import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TripController extends GetxController {
  final TextEditingController tripNameController = TextEditingController();

  void completeTrip() {
    final tripName = tripNameController.text;
    if (tripName.isNotEmpty) {
      // Logic for saving or processing the trip name
      Get.snackbar("Trip Created", "Nama Trip: $tripName");
    } else {
      Get.snackbar("Error", "Nama Trip tidak boleh kosong");
    }
  }

  @override
  void onClose() {
    tripNameController.dispose();
    super.onClose();
  }
}
