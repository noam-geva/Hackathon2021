import 'package:flutter/material.dart';
class InfoPersonnel extends StatefulWidget {
  @override
  _infoPersonnelState createState() => _infoPersonnelState();
}

class _infoPersonnelState extends State<InfoPersonnel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:13,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back,size: 19,color: Colors.black87,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  InkWell(
                      child: Text("Save",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical:8.0,horizontal: 10),
                child: Text("Edit Personal Information",style: TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10,8,10,0),
                    child: Text("First Name",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black87),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.cancel,size: 18,),
                      onPressed: (){},
                    )
                  ),
                  controller: TextEditingController(
                    text: "Elizabeth"
                  ),
                  ),
          ),
                ],
              ),
              SizedBox(height: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10,8,10,0),
                    child: Text("Last Name",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black87),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.cancel,size: 18,),
                            onPressed: (){},
                          )
                      ),
                      controller: TextEditingController(
                          text: "The Queen"
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              InkWell(
                onTap: (){

                },
                child: GestureDetector(
                  onTap: (){
                      _askedToLead();
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:  EdgeInsets.fromLTRB(10,8,10,0),
                        child: Text("Gender",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                        child: Text("Female",style: TextStyle(color:Colors.black,fontSize: 17,fontWeight: FontWeight.w300),),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  _selectDate(context);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10,8,10,0),
                      child: Text("Date of Birth",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                        child: Text("21/4/1926"),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10,8,10,0),
                    child: Text("Phone Number",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black87),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.cancel,size: 18,),
                            onPressed: (){},
                          )
                      ),
                      controller: TextEditingController(
                          text: "+972 XXXXXXXXX"
                      ),
                    ),
                  ),
                ],
              ),
            ],
      ),
    ),
      ),
    );
  }
  Future<void> _selectDate(BuildContext context) async {
    DateTime selectedDate = DateTime.now();
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 1),
        lastDate: DateTime(DateTime.now().year+1));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<void> _askedToLead() async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Gender'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Male"); },
                child: const Text('Male'),
              ),
              SimpleDialogOption(
                onPressed: () { Navigator.pop(context, "Female"); },
                child: const Text('Female'),
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
      case "Female":
      // ...
        break;
    }
  }
}
