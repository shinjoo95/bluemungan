import 'package:bluemungan/core/routes/app_pages.dart';
import 'package:bluemungan/main/controller/main_controller.dart';
import 'package:bluemungan/main/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  Get.put(MainController());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      getPages: AppPages.routes,
    );
  }
}
