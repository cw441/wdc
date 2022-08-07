import 'dart:ui';
import 'package:flutter/material.dart';
import '../../model/model1.dart' as product1;


class ProductItem1 extends StatelessWidget {

  ProductItem1({
    required this.item1,

    Key? key}) : super(key: key);
  final product1.Product11 item1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(8),
            child:Container(
                width: MediaQuery.of(context).size.width*1,
                height:MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.black54.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),

                ),

                child:Row(
                  children: [
                        Container(

                            child:Padding(
                padding: const EdgeInsets.all(2),
                child:
                            ClipRRect(
                              borderRadius:BorderRadius.circular(10),
                              child: Image.network( item1.attributes.image1.data.first.attributes.url,
                                height:MediaQuery.of(context).size.width*0.49,
                                width: MediaQuery.of(context).size.width*0.49,
                                fit: BoxFit.fill,
                              ),
                            )
                        )
                    ),
                    SizedBox(width: 5,),
               Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.width*0.2),
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
                )
            )
        )
    );
  }
}

