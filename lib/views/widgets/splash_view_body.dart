

import 'package:book2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Books',
                style: TextStyle(
                    fontSize: 45.sp,
                    fontWeight: FontWeight.bold,
                    color:kprimaryColor ,
                    ),
              ),
              
              
            ],
          ),
          // Image.asset('assets/images/logo.webp', width:size.width * 0.80 ,),
        ),
      );
  }
}