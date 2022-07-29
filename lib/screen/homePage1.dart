import 'dart:developer';
import '../model/model1.dart' as product1;
import 'package:flutter/material.dart';
import '../serves/get all1.dart';
import '../widgets/screen1.dart';


class HomePageOne extends StatefulWidget {
  const HomePageOne({Key? key}) : super(key: key);
  static String id = 'HomePAge';

  @override
  State<HomePageOne> createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.8),
appBar: AppBar(
  backgroundColor: Colors.black.withOpacity(0.8),
  title: Text('ICE CREAM AND JUICES',
      style: TextStyle(
      fontSize: 20,
      color: Colors.white
  ),
  ),
  elevation: 0,
),
        // show product as grid view
        body:Center(child:  Padding(
          padding: const EdgeInsets.only(left:10,right:10,top:10 ),
          child:
          FutureBuilder(
            future: EcommerceService1.getProducts1(),
            builder: (BuildContext context, AsyncSnapshot<List<product1.Product1>?> snapshot) {
              // has error
              if (snapshot.hasError) {
                return Center(child: Text("Error"));
              }

              // hase data
              if (snapshot.hasData) {
                // show data as gridview here

                final products1 = snapshot.data;

                return
                    //screen1
                    Column(
                      children: products1!.map((item1) {
                        return ProductItem1(item1: item1);
                      }).toList(),

                );
              }

              // loading
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
        )
    );
  }
}