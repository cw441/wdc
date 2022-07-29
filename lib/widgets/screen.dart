import 'dart:ui';
import 'package:flutter/material.dart';
import '../../model/productmodel.dart' as product;
import '../serves/get all.dart';


class ProductItem extends StatelessWidget {

  ProductItem({
    required this.item,

    Key? key}) : super(key: key);
  final product.Product item;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
        padding: const EdgeInsets.all(8),
          child:Container(
              width: 200,
              height: 260,
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

                 child:Column(
                   children: [
                 Padding(
                 padding: const EdgeInsets.all(2),
                    child: Container(

                         child:ClipRRect(
                           borderRadius:BorderRadius.circular(10),
                        child: Image.network( item.attributes.image.data.first.attributes.url,
                             height: 200,
                             width: 200,
                           fit: BoxFit.fill,
                         ),
                )
                    )
                     ),
                     SizedBox(height: 5,),
                     Text(
                        item.attributes.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                       style: TextStyle(
                           fontSize: 20,
                           color: Colors.white
                       ),
                      ),
                      SizedBox(height: 5,),
                      Text(r'$''${item.attributes.num}',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.amberAccent
                        ),)
        ],
                 )
    )
    )
    );
  }
}




