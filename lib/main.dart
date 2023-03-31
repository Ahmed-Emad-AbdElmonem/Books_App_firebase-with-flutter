import 'package:book2/constants.dart';
import 'package:book2/firebase_options.dart';
import 'package:book2/views/books_details_views.dart';
import 'package:book2/views/categories_coleges_view.dart';
import 'package:book2/views/home_view.dart';
import 'package:book2/views/pdf_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  // await FlutterDownloader.initialize(debug: true, ignoreSsl: true);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Books',
          theme: ThemeData(
            backgroundColor: kprimaryColor,
            textTheme: const TextTheme(
              headline1: TextStyle(
                color: Colors.white,
              ),
            ),
            primarySwatch: Colors.blue,
          ),
          home: PdfView(), //ColegesScreen(nameAappbar: '',),
          routes: {
            'HomeView': (context) => const HomeView(),
            'BooksDetailsView': (context) => const BooksDetailsView(),
            'ColegesScreen': (context) => ColegesScreen(
                  nameAappbar: '',
                ),
          },
        );
      },
    );
  }
}
