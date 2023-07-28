import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         width: double.infinity,
         decoration: BoxDecoration(
           gradient: LinearGradient(
               begin: Alignment.topRight,
               end: Alignment.bottomLeft,
               colors: [Colors.blueAccent, Colors.purple]),
         ),
         child: Column(

           mainAxisAlignment: MainAxisAlignment.center,

           children: [
             Icon(Icons.account_tree_outlined,
             size: 80,
             color: Colors.white,),


             SizedBox(height: 25,),

             Text("News Flash",
             style: TextStyle(
               fontSize: 35,
               fontStyle: FontStyle.italic,
               fontWeight: FontWeight.w700,
               color: Colors.white,
             ),),


           ],
         ),
       ),
    );
  }
}
