

import 'package:book2/views/widgets/custom_book_details_appbar.dart';
import 'package:book2/views/widgets/custom_book_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            customBookDetailsItem(),
            
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}


