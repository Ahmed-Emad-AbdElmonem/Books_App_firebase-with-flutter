import 'package:book2/views/Adab_college.dart';
import 'package:book2/views/categories_coleges_view.dart';
import 'package:book2/views/widgets/categories_widget.dart';
import 'package:book2/views/widgets/navigateto.dart';
import 'package:flutter/material.dart';


class CairoCollege extends StatelessWidget {
  const CairoCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return CategriesWidget(
        nameAappbar: 'جامعة القاهرة',
        columnSubjectName: Column(
          children: [
            NameOfCategories(
                name: 'كلية اداب',
                ontapp: () {
                   navigateto(context, AdabCollege());
                }),
                NameOfCategories(
                name: 'كلية تجارة',
                ontapp: () {
                  // navigateto(context, 'روت كلية اداب')
                }),
                NameOfCategories(
                name: 'كلية حقوق',
                ontapp: () {
                  // navigateto(context, 'روت كلية اداب')
                }),
          ],
        ));
  }
}
