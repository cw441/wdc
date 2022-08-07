import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import '../../model/model.dart' as product;
import '../serves/get allAPI.dart';


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
              height: MediaQuery.of(context).size.width*0.64,
              width: MediaQuery.of(context).size.width*0.41,
              decoration: BoxDecoration(
                      color: Colors.black54.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),

              ),

                 child:Column(
                   children: [
                 Padding(
                 padding: const EdgeInsets.all(2),
                    child: Container(

                         child:ClipRRect(
                           borderRadius:BorderRadius.circular(10),
                        child: Image.network( item.attributes.image.data.first.attributes.url,
                             height: MediaQuery.of(context).size.width*0.42,
                             width: MediaQuery.of(context).size.width*0.4,
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
               Row(
                        children: [

                        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                          Center(
                            child:   Text(r'$''${item.attributes.num}',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.amberAccent
                         )
                        ),
                      ),
                          Center(
                            child: Link(
                                 uri:Uri.parse('https://wa.me/9647802403955?text=${item.attributes.name}') ,
                               builder: (context, followLink) =>
                                 IconButton(
                              onPressed: followLink,
                                  icon:Icon(Icons.add,
                                     color: Colors.white,)
                    )
                   ),
                          )
                  ],
                ),
             ],
           )
          )
         )
    );
  }
}




