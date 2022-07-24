import 'package:flutter/material.dart';
import '../../model/productmodel.dart' as product;

import '../model/productmodel.dart';

class ProductItem extends StatelessWidget {

  ProductItem({
    required this.item,

    Key? key}) : super(key: key);
  final product.Product item;

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        children:[
          Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      offset: Offset(6,6)


                  ),
                ],
              ),
              child: Card(
                elevation: 7,
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        item.attributes.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5,),
                      Text('${item.attributes.num}')
                    ],
                  ),
                ),
              )
          ),
     Positioned(
              right: 30 ,
              bottom: 20,
            child:Image.network(item.attributes.image.data.attributes.url,
               height: 200,
                 width: 120
             )
         )
        ]
    );
  }
}




