import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:untitled/postAll/postS.dart';
import 'package:untitled/screen/homePage.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/screen/homePage1.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
class aa extends StatefulWidget {
  const aa({Key? key}) : super(key: key);
final _numberCtrl = 07802403955;
  @override
  State<aa> createState() => _aaState();
}

class _aaState extends State<aa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text  ('NAME MARCT',
          style: TextStyle(
            color: Colors.white,
            fontSize:20,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.4),
      ),   
      body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
           onPressed:(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>postSecrren()
          )
      );
    },

          child: Text('post')
    ),
        SizedBox(height:4,),
        Padding(
          padding: const EdgeInsets.all(2),
          child:
                  Container(
                width:double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                ),
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                  children: [
                Column(
                  children: [
                Padding(
                padding: const EdgeInsets.all(16),
                    child:
                  Align(alignment: Alignment.centerLeft,
                      child:Text("Birthday Discount 25%",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45
                  ),
                  ))),
                  Text('Delicious Cake and Juice ',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black45
                    ),
                  ),
                    Text('and Ice Cream Menu',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black45
                      ),
                    ),
                      TextButton(onPressed: (){
                          showDialog(context: context,
                          builder: (context) => AlertDialog(
                  actions: [
                            Center(

                              child: Link(

                          uri:Uri.parse('https://wa.me/9647802403955?text=mahmood') ,
                            builder: (context, followLink) =>
                                 IconButton(
                               onPressed: followLink,
                                  icon:Icon(Icons.whatsapp,
                               color: Colors.green,)
                           )),),
                                Center(child: IconButton(
                                   icon: Icon(Icons.call,
                              color: Colors.green,),
                                onPressed: () async {
                        FlutterPhoneDirectCaller.callNumber('07802403955');
                      },
                    )
                        )
                          ],
                        )
                      );
                     },
                          child:Row(children: [
                            Text('Order Now'),
                            Icon(Icons.add)
                            ],
                          )
                      )
                 ]
                ),

                Align(
                   alignment: Alignment.topRight,
                    child: Image.asset('image/3333.jpg',
              ))
               ],
               ),
              ),)
                  ),
        SizedBox(height: 5,),
        SizedBox(height: 4,),
        Container(
          height: MediaQuery.of(context).size.width*1,
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
