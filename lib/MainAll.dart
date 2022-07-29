import 'package:flutter/material.dart';
import 'package:untitled/screen/homePage.dart';
import 'package:untitled/screen/homePage1.dart';
import 'package:lottie/lottie.dart';

class aa extends StatefulWidget {
  const aa({Key? key}) : super(key: key);

  @override
  State<aa> createState() => _aaState();
}

class _aaState extends State<aa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.black.withOpacity(0.8),
      ),   
      body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomePage()));
          },
              child: Text('ddddd')),

       Padding(
       padding: const EdgeInsets.all(5),
        child: Align(
            alignment: Alignment.centerLeft,

           child:Text  ('NAME MARCT',
            style: TextStyle(
              color: Colors.white,
              fontSize:25,
            ),
             ),
        ) ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

           children: [
         Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
            child: Lottie.asset('image/ice creem.json',
             height: 150,
             width: 150
             ),
             ),

             Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child:Lottie.asset('image/cake.json',

             ),
             ),
             Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Lottie.asset('image/juice.json',

              )
             )
            ],
          ),
        SizedBox(height: 5,),
        Container(
          height: 400,
          width: double.infinity ,
          child: HomePage(),
        ),
        Container(
          height: 500,
          width: double.infinity,
          child: HomePageOne() ,
        )
      ],
      )
      )
    );

  }
}
