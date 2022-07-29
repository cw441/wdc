import 'dart:ui';
import 'package:flutter/material.dart';
import '../../model/model1.dart' as product1;
import '../serves/get all.dart';


class ProductItem1 extends StatelessWidget {

  ProductItem1({
    required this.item1,

    Key? key}) : super(key: key);
  final product1.Product1 item1;

  @override
  Widget build(BuildContext context) {
    return   Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black54.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),

                boxShadow:[
                  BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0,
                      offset: Offset(6,6)


                  ),
                ],
              ),
              child: Row(
                    children:[
              Padding(
              padding: const EdgeInsets.all(2),
      child: Align(
                  alignment: Alignment.centerLeft,
                  child:Container(
                      child:ClipRRect(
                          borderRadius:BorderRadius.circular(10),
                          child: Image.network( item1.attributes.image1.data.first.attributes.url,
                        height: 150,
                        width: 150,
                    fit: BoxFit.fill,
                          )
                        )
                      )
                   )
              ),
                    Column(
                        children: [
                          SizedBox(height: 90,),
                        Text(
                        item1.attributes.name1,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                      ),
                         SizedBox(height: 5,),
                         Text(r'$''${item1.attributes.num1}',
                         style: TextStyle(
                           fontSize: 17,
                           color: Colors.amberAccent
                         ),
                         )
],
)
                    ],
                  ),
    );
  }
}




