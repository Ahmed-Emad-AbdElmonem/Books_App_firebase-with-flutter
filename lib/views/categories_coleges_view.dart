import 'package:book2/views/cairo_college_view.dart';
import 'package:book2/views/widgets/categories_widget.dart';
import 'package:book2/views/widgets/navigateto.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// بيدج الجامعات
class ColegesScreen extends StatelessWidget {
  ColegesScreen({Key? key, required this.nameAappbar}) : super(key: key);
  String nameAappbar;
  @override
  Widget build(BuildContext context) {
    return CategriesWidget(
      nameAappbar: 'الجامعات',
      columnSubjectName: Column(
        children: [
          NameOfCategories(name: 'جامعة القاهرة',
           ontapp: () {
            navigateto(context, CairoCollege());
           }),
           NameOfCategories(name: 'جامعة المنصورة',
           ontapp: () {
          //  navigateto(context, 'بيدج كليات جامعة المنصورة')
           }),
            NameOfCategories(name: 'جامعة طنطا',
           ontapp: () {
          //  navigateto(context, 'بيدج كليات جامعة طنطا')
           }),
            NameOfCategories(name: 'جامعة 6 اكتوبر',
           ontapp: () {
          //  navigateto(context, 'بيدج كليات جامعة 6 اكتوبر')
           }),
            NameOfCategories(name: 'جامعة الازهر',
           ontapp: () {
          //  navigateto(context, 'بيدج كليات جامعة الازهر')
           }), 
           NameOfCategories(name: 'جامعة زويل',
           ontapp: () {
          //  navigateto(context, 'بيدج كليات جامعة زويل')
           }),
            NameOfCategories(name: 'جامعة اسيوط',
           ontapp: () {
          //  navigateto(context, 'بيدج كليات جامعة  اسيوط')
           }),
        ],
      ),
    );
  }
}

class NameOfCategories extends StatelessWidget {
  NameOfCategories({Key? key, required this.name, required this.ontapp})
      : super(key: key);
  late String name;
  Function()? ontapp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapp,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70.h,
            color: Color(0xff1c8c7f),
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,)
        ],
      ),
    );
  }
}
