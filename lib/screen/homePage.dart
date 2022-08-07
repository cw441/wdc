import 'dart:developer';
import '../model/model.dart' as product;
import 'package:flutter/material.dart';
import '../widgets/screen.dart';
import '../serves/get allAPI.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePAge';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.4),
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.4),
          title: Text('PASTRIES AND CAKE',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          ),
          elevation: 0,
        ),
      // show product as grid view
      body:
      FutureBuilder(
        future: EcommerceService.getProducts(),
        builder: (BuildContext context,
            AsyncSnapshot<List<product.Product>?> snapshot) {
          // has error
          if (snapshot.hasError) {
            return Center(child: Text("Error"));
          }

          // hase data
          if (snapshot.hasData) {
            // show data as gridview here

final products = snapshot.data;

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                  //screen
                     children: products!.map((item) {
                      return ProductItem(item: item);
                        }).toList(),

                )    );
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