import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/modules/search/controllers/search_controller.dart' as local; // Import SearchController


void main() async {
  WidgetsFlutterBinding.ensureInitialized();  
 
  Get.lazyPut<local.SearchController>(() => local.SearchController());
  

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
