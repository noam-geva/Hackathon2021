import 'package:airbnb_clone/Routes/AddProperty/addLocation.dart';
import 'package:flutter/material.dart';
import 'endAdding.dart';

Color sitWithMeGrey= Color(0xFF424242);

class CategorieType extends StatefulWidget {
  @override
  _CategorieTypeState createState() => _CategorieTypeState();
}

class _CategorieTypeState extends State<CategorieType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:25,horizontal: 15 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             IconButton(
               icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
             onPressed: (){
               Navigator.pop(context);
             },),
              SizedBox(height: 30,),
              Text("Tell us about your Workspace",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),maxLines: 2,textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  _askedToLead();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,8,10,0),
                      child: Text("Now choose a type of workspace",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,12,10,3),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Choose your type of workspace",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w300)))
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  SousCategorieDialog();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,8,10,0),
                      child: Text("Now choose a group/single",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,12,10,3),
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Choose your type",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w300)))
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: MaterialButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Emplacement()),
          );
        },
        elevation: 3,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
          ),
            child: Text("Continue",style: TextStyle(color: Colors.white),)),
      ),
    );
  }
  Future<void> _askedToLead() async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Apartment"); },
                child: const Text('Apartment'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Office"); },
                child: const Text('Office'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Large Workspace"); },
                child: const Text('Large Workspace'),
              ),
              // SimpleDialogOption(
              //   onPressed: () { Navigator.pop(context, "Maison"); },
              //   child: const Text('Maison'),
              // ),
            ],
          );
        }
    )) {
      case "Male":
      // Let's go.
      // ...
        break;
      case "Female":
      // ...
        break;
    }
  }

  Future<void> SousCategorieDialog() async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Single Workspace"); },
                child: const Text('Single Workspace'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Group Workspace"); },
                child: const Text('Group Workspace'),
              ),
            ],
          );
        }
    )) {
      case "Male":
      // Let's go.
      // ...
        break;
      case "Female":
      // ...
        break;
    }
  }
}
