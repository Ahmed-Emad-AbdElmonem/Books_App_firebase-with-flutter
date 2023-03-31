import 'package:book2/core/styles.dart';
import 'package:flutter/material.dart';

class CategriesWidget extends StatelessWidget {
  CategriesWidget(
      {Key? key,
      required this.nameAappbar,
      //required this.routesOfPage,
      /*required this.routesOfSubject,*/
       required this.columnSubjectName})
      : super(key: key);

  String nameAappbar;
  //String routesOfPage;
  //String routesOfSubject;
  Widget columnSubjectName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 214, 197),
        appBar: AppBar(
          backgroundColor: Color(0xff06574e),
          centerTitle: true,
          title: Text(
            nameAappbar,
            style: Styles.textStyle25,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
               child: columnSubjectName),
        ),
      ),
    );
  }
}
