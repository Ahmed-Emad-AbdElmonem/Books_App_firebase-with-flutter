
import 'package:book2/views/widgets/navigateto.dart';
import 'package:book2/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    gotoNextPage();
    
  }

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
     
      body: SplashViewBody(),
    );
  }

   gotoNextPage() {
    Future.delayed(Duration(seconds: 2), () {
      navigateandfinish(context, 'HomeView');
      
    });
  }
}

