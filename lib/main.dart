import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/splash/presentation/pages/splash_page.dart';

initServices() async {
  log('STARTING SERVICES ...');
  // await Get.putAsync(() => LocalStorage.init());
  log('ALL SERVICE STARTED ...');
}

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  // await setUpDependencyInjection();
  // await Firebase.initializeApp();
  // await initServices();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const Sahlah());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class Sahlah extends StatelessWidget {
  const Sahlah({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
          scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
        );
      },
    );
  }
}
