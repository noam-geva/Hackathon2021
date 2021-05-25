import 'dart:math';

import 'package:airbnb_clone/Routes/AddProperty/Photo.dart';
import 'package:airbnb_clone/Widgets/CircleCheckBox.dart';
import 'package:flutter/material.dart';
class AddFeatures extends StatefulWidget {
  @override
  _AddFeaturesState createState() => _AddFeaturesState();
}

class _AddFeaturesState extends State<AddFeatures> {
  var _chooseSpace=false;

  var _cafeKit=false;

  var _dishes=false;

  var _parking=false;

  var _fridge=false;

  var _airCond=false;

  var _isSilence=false;

  var _smokeFreeZone=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:25,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                onPressed: (){
                  Navigator.pop(context);
                },),
              SizedBox(height: 30,),
              GestureDetector(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text("Wi-Fi",style: TextStyle(fontSize: 15),),
                     Container(
                       height: 35,
                       decoration: BoxDecoration(shape: BoxShape.circle, color: _chooseSpace? Colors.blue:Colors.black12),
                       child: _chooseSpace
                           ? Icon(
                         Icons.check,
                         size: 30.0,
                         color: Colors.white,
                       )
                           :Icon(
                         Icons.check,
                         size: 30.0,
                         color: Colors.white,
                       )
                     ),
                   ],
                 ),
               ),
                onTap: (){
                 setState(() {
                   _chooseSpace=!_chooseSpace;
                 });
                },
              ),
              SeparateurHorizontal(),

              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("cafe kit",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _cafeKit? Colors.blue:Colors.black12),
                          child: _cafeKit
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _cafeKit=!_cafeKit;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("dishes",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _dishes? Colors.blue:Colors.black12),
                          child: _dishes
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _dishes=!_dishes;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Parking",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _parking? Colors.blue:Colors.black12),
                          child: _parking
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _parking=!_parking;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("fridge",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _fridge? Colors.blue:Colors.black12),
                          child: _fridge
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _fridge=!_fridge;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("air conditioning",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _airCond? Colors.blue:Colors.black12),
                          child: _airCond
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _airCond=!_airCond;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("silent",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _isSilence? Colors.blue:Colors.black12),
                          child: _isSilence
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _isSilence=!_isSilence;
                  });
                },
              ),
              SeparateurHorizontal(),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("smoke free zone",style: TextStyle(fontSize: 15),),
                      Container(
                          height: 35,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: _smokeFreeZone? Colors.blue:Colors.black12),
                          child: _smokeFreeZone
                              ? Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                              :Icon(
                            Icons.check,
                            size: 30.0,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  setState(() {
                    _smokeFreeZone=!_smokeFreeZone;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Photo()),
          );
        },
        elevation: 3,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Text("continue",style: TextStyle(color: Colors.white),)),
      ),
    );
  }

  Container SeparateurHorizontal() {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              height: 0.3,
              color: Colors.grey,
            );
  }
}
