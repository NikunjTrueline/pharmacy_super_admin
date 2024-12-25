import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_super_admin/prefrence/prefrence_servicies.dart';
import 'package:pharmacy_super_admin/routing/app_route.dart';
import 'constants/constants.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyDxmJJqOeomorlF7sxRhC45L_r3t5LefmQ',
        appId: '1:972977394163:android:d838070f365ccf9bab0286',
        messagingSenderId: '972977394163',
        projectId: 'medical-management-6c653',
        storageBucket: 'medical-management-6c653.appspot.com'),
  );
  await PreferenceServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharmacy management',
      initialRoute: AppConstant.splashView,
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
