import 'package:book2/views/categories_coleges_view.dart';
import 'package:book2/views/widgets/categories_widget.dart';
import 'package:flutter/material.dart';

class ferqaOla extends StatelessWidget {
  const ferqaOla({super.key});

  @override
  Widget build(BuildContext context) {
    return CategriesWidget(
        nameAappbar: 'المواد الدراسية',
        columnSubjectName: Column(
          children: [
            NameOfCategories(
                name: 'مادة العلوم',
                ontapp: () {
                  // navigateto(context, 'العمارة);
                }),

                NameOfCategories(
                name: 'مادة الرياضيات',
                ontapp: () {
                  // navigateto(context, 'التاريخ);
                }),

                  NameOfCategories(
                name: 'مادة الفن',
                ontapp: () {
                  // navigateto(context, 'الفن);
                }),
                  NameOfCategories(
                name: 'مادة المتاحف',
                ontapp: () {
                  // navigateto(context, 'المتاحف);
                }),
          ],
        ));
  }
}
