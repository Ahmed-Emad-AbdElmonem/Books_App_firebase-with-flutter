import 'package:book2/views/books_details_views.dart';
import 'package:book2/views/widgets/container_details.dart';
import 'package:book2/views/widgets/navigateto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateto(
          context,
          const BooksDetailsView(),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
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
          ),
          containerDetails(
              nameofobject: 'مادة تاريخ مصر', price: "price 100 EGP"),
        ],
      ),
    );
  }
}
