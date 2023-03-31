
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  late String txt;
 late Function() ontap;
 late double? width;
  late double? height;
  late Color? btncolor;
  late Color? txtcolor;
  MainButton({
    required this.txt, required this.ontap, required this.width, required this.height, required this.btncolor,required this.txtcolor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        decoration:BoxDecoration(
          color:btncolor,
        borderRadius: BorderRadius.circular(14) ,
        
        ) ,
        alignment:Alignment.center ,
        
        height: height,
        width:width  ,  
        child: Center(
          child: Text(txt,
          style:TextStyle(
            color: txtcolor,
            fontSize: 18.sp,
            fontWeight:FontWeight.w600,
    
          ) ,
          ),
        ),
      ),
    );
  }
}
