import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text('Books',style: TextStyle(color: Colors.black),),
       // const Spacer(),
        // هعيد ع ال size
        
        //  IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 24.sp ,),),
        ],
      ),
    );
  }
}