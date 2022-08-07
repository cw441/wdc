import 'dart:developer';
import '../model/model1.dart' as product1;
import 'package:flutter/material.dart';
import '../serves/get all1API.dart';
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
      backgroundColor: Colors.white.withOpacity(0.4),
      appBar: AppBar(
  backgroundColor: Colors.white.withOpacity(0.4),
       title: Text('ICE CREAM AND JUICES',
      style: TextStyle(
      fontSize: 20,
      color: Colors.white
  ),
  ),
  elevation: 0,
),
        // show product as grid view
        body: FutureBuilder(
            future: EcommerceService1.getProducts1(),
            builder: (BuildContext context, AsyncSnapshot<List<product1.Product11>?> snapshot) {
              // has error
              if (snapshot.hasError) {
                return Center(child: Text("Error"));
              }

              // hase data
              if (snapshot.hasData) {
                // show data as gridview here

                final products1 = snapshot.data;

                return   Padding(
                    padding: const EdgeInsets.all(8),
                    child:SingleChildScrollView(
           child: Column(
                      children: products1!.map((item1) {
                        return ProductItem1(item1: item1);
                      }).toList(),
                  ))
                        );
              }

              // loading
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
    );
  }
}