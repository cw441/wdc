
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../MainAll.dart';
import '../main.dart';
class postSecrren extends StatefulWidget {
  const postSecrren({Key? key}) : super(key: key);

  @override
  State<postSecrren> createState() => _postSecrrenState();
}

class _postSecrrenState extends State<postSecrren> {

   File? image;
  final _piker = ImagePicker();
  bool showSpinner=false;

  Future getImage()async{
    final PickedFile =await _piker.pickImage(source: ImageSource.gallery,imageQuality: 80);
    if(PickedFile!= null){
      image = File(PickedFile.path);
      setState((){

      });
  }else{
      print("no ");
    }
}
  ////////////////////////////////////////
  var formKey = GlobalKey<FormState>();
  var name= TextEditingController();
  var num= TextEditingController();
  ////////////////////////////////////////////
  Map<String,String> headers = {
    'Content-Type':'application/json',
    'Accept': 'application/json'
  };
///////////////////////////////////

  Future<void> uploadImage()async{
    setState((){
showSpinner=true;
    });
    var stream = http.ByteStream(image!.openRead());
stream.cast();
var length = await image!.length();
var uri = Uri.parse('https://mahmoudaliapp.herokuapp.com/api/masls');

var request = http.MultipartRequest('POST',uri);
    headers: headers;
request.fields['name']="aaaaaaa";
request.fields['num']="191";

var multiport = http.MultipartFile(
  'image',
  stream,
  length
);
request.files.add(multiport);
var response = await request.send();
   if(response.statusCode==200){
     setState((){
       showSpinner=false;
     });
     print('image uploaded');
   }else{
     print('no immmmage');
   }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(inAsyncCall: showSpinner,
        child: Scaffold(
      body: Center(
       child:Form(
        key: formKey,
 
         child: Column(  
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: name,
              validator: (value){
                if(value ==null){
                  return"ok";
                }
                return null;
              },
            ),
            TextFormField(
              controller: num,
              validator: (value){
                if(value ==null){
                  return"ok";
                }
                return null;
              },
            ),
            IconButton(onPressed: (){
              getImage();
            },
                icon: Icon(Icons.image)),


            SizedBox(height: 20,),
            TextButton(
             onPressed:(){ uploadImage();
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>MyApp()
              )
              );
            },
                child: Text('post'))
          ],
        ),
      ),
          )
      ));
  }
}
