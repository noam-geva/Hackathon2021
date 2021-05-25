import 'dart:ui';

import 'package:airbnb_clone/Routes/Map.dart';
import 'package:airbnb_clone/Widgets/ItemDropDownButtonCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:airbnb_clone/Routes/HomePage.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home : AddProperty(),
  )
);
class AddProperty extends StatefulWidget {
  @override
  _AddPropertyState createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  ItemDropDownButtonCategory _selectedCategory;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff3366cc),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                width: MediaQuery.of(context).size.width,
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Icon(
                  Icons.add_circle_outline,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Title",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "vile",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Description",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Workspace with 2 screens and valgrind running ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Price",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "15 ₪ per hour",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Surface",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "125 ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Apartment Number",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "3",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Entry",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "A",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Location",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: FlatButton(
                      color: Color(0xff3366cc),
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child: Text(
                        "choose location",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:Text("Categories",
                        style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: DropdownButton<ItemDropDownButtonCategory>(
                        value: _selectedCategory,
                        hint: Text("Choose an option"),
                        onChanged: (ItemDropDownButtonCategory Value){
                          setState(() {
                            _selectedCategory = Value;
                          });
                        },
                        items: ItemDropDownButtonCategory.list.map((ItemDropDownButtonCategory item){
                          return DropdownMenuItem<ItemDropDownButtonCategory>(
                            value: item,
                            child: Row(
                              children: <Widget>[
                                item.icon,
                                SizedBox(width: 10,),
                                Text(item.label,style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          );
                        }).toList(),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              FlatButton(
                color: Color(0xff3366cc),
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.grey,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Validate",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ],
          ),
        )
    );
  }
}
