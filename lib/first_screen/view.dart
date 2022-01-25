import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'logic.dart';

class FirstScreenWidget extends StatelessWidget {
  final logic = Get.find<FirstScreenLogic>();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<FirstScreenLogic>(
            autoRemove: false,
            assignId: true,
            builder: (logic) {
              return logic.image == null ? Container(
                width: media.width,
                height: media.height,
                color: Colors.grey,
              ) : Container(
                width: media.width,
                height: media.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: MemoryImage(logic.image), fit: BoxFit.cover)
                ),
              );
            },
          ),
          GetBuilder<FirstScreenLogic>(
            autoRemove: false,
            assignId: true,
            builder: (logic) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black26
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10
                      ),
                      margin: EdgeInsets.symmetric(
                      vertical: 10,
              horizontal: 20
              ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text('Are you a student',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.green
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Get.bottomSheet(
                                      Container(
                                        height: 120,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            ListTile(
                                              title: Text('From Gallery',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                              onTap: (){
                                                logic.pickImage(ImageSource.gallery);
                                              },
                                            ),
                                            ListTile(
                                              title: Text('From Camera',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                              onTap: (){
                                                logic.pickImage(ImageSource.camera);
                                              },
                                            ),
                                          ],
                                        ),
                                      )
                                  );
                                },
                                child: Text('Upload Student ID Card',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 14
                                ),),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Benefits',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 0),
                            leading: Text('•',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                              ),
                            ),
                            minLeadingWidth: 5,
                            title: Text('10% discount on all Clothing etc.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 0),
                            leading: Text('•',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                              ),
                            ),
                            minLeadingWidth: 5,
                            title: Text('10% discount on all Clothing etc.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 0),
                            leading: Text('•',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                              ),
                            ),
                            minLeadingWidth: 5,
                            title: Text('10% discount on all Clothing etc.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 0),
                            leading: Text('•',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                              ),
                            ),
                            minLeadingWidth: 5,
                            title: Text('10% discount on all Clothing etc.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
