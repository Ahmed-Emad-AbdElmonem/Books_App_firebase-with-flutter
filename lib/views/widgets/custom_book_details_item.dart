import 'package:book2/views/widgets/container_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customBookDetailsItem extends StatelessWidget {
  const customBookDetailsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            // color: Colors.red,

            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/1.jfif',
              ),
            ),
          ),
          height: 600.h,
          width: 300.w,
        ),
        containerDetails(nameofobject: 'nameofobject', price: 'price')
      ],
    );
  }
}