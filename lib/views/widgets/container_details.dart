
import 'package:book2/constants.dart';
import 'package:book2/core/mainButton.dart';
import 'package:book2/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class containerDetails extends StatelessWidget {
   containerDetails({super.key,
  required this.nameofobject,
  required this.price,
  });

late String nameofobject;
late String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kprimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              nameofobject,
                style: Styles.textStyle20.copyWith(color: Colors.white)),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainButton(
                  txt: 'ادفع',
                  width: 150.w,
                  height: 50.h,
                  btncolor: Colors.white,
                  txtcolor: kprimaryColor,
                  ontap: () {},
                ),
                SizedBox(
                  width: 1.w,
                ),
                MainButton(
                    txt:price,
                    width: 150.w,
                    height: 50.h,
                    btncolor:const Color.fromARGB(255, 255, 81, 0),
                    txtcolor: kprimaryColor,
                    ontap: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
