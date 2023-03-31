import 'package:book2/views/widgets/custom_appbar.dart';
import 'package:book2/views/widgets/featured_gridview.dart';
import 'package:flutter/material.dart';



class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
      Column(
      children:const [
    CustomAppBar(),
    Expanded(child: FeaturedBooksGridview()),
    
      ],
      );
   
     

  }
}


