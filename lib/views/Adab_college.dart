import 'package:book2/views/categories_coleges_view.dart';
import 'package:book2/views/islamic_athar.dart';
import 'package:book2/views/widgets/categories_widget.dart';
import 'package:book2/views/widgets/navigateto.dart';
import 'package:flutter/material.dart';

class AdabCollege extends StatelessWidget {
  const AdabCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return CategriesWidget(
        nameAappbar: 'كلية اداب',
        columnSubjectName: Column(
          children: [
            NameOfCategories(
              name: 'قسم اثار اسلامية',
              ontapp: () {
                navigateto(context, IslamicAthar());
              },
            ),
            NameOfCategories(
              name: 'قسم عربي',
              ontapp: () {
                // navigateto(context, 'روت بيدج قسم عربي')
              },
            ),
            NameOfCategories(
              name: 'قسم انجليزى',
              ontapp: () {
                // navigateto(context, 'روت بيدج قسم انجلش')
              },
            ),
          ],
        ));
  }
}
