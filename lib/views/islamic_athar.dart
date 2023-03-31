import 'package:book2/views/categories_coleges_view.dart';
import 'package:book2/views/ferqa_ola_cairo.dart';
import 'package:book2/views/widgets/categories_widget.dart';
import 'package:book2/views/widgets/navigateto.dart';
import 'package:flutter/material.dart';

class IslamicAthar extends StatelessWidget {
  const IslamicAthar({super.key});

  @override
  Widget build(BuildContext context) {
    return CategriesWidget(
        nameAappbar: 'قسم التاريخ المصري',
        columnSubjectName: Column(
          children: [
            NameOfCategories(
                name: 'فرقة اولى',
                ontapp: () {
                   navigateto(context, ferqaOla());
                }),

                NameOfCategories(
                name: 'فرقة تانية',
                ontapp: () {
                  // navigateto(context, 'روت بيدج فرقة تانية');
                }),

                  NameOfCategories(
                name: 'فرقة تالتة',
                ontapp: () {
                  // navigateto(context, 'روت بيدج فرقة تالتة');
                }),
                  NameOfCategories(
                name: 'فرقة رابعة',
                ontapp: () {
                  // navigateto(context, 'روت بيدج فرقة رابعة');
                }),
          ],
        ));
  }
}
