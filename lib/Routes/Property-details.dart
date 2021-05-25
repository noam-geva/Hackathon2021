import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/WorkSpace.dart';
import 'package:airbnb_clone/Routes/BookingScreen.dart';
import 'package:airbnb_clone/Routes/Payer.dart';
import 'package:airbnb_clone/Widgets/commentsWidget.dart';
import 'package:airbnb_clone/Routes/DescriptionDetails.dart';
import 'package:airbnb_clone/Widgets/custom_slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    )
);
class PropertyDetails extends StatefulWidget {
  final WorkSpace _property;

  PropertyDetails(this._property);
  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  var _pageController=PageController();
  var _currentIndex=0;
  var _maxlines =3;
  bool _liked=false;
  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        _currentIndex=_pageController.page.round();
      });
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  buildImageSlider(context),
                  buildWidgetImageIndicator(context),
                  buildCloseWidget(context),
                  buildHeartWidget(context),
                  buildContainerPrice(),
                ],
              ),
              buildDescreption(context),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,10),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin:EdgeInsets.only(right: 5),
                        child: Icon(Icons.star,color: Constants.sitWithMeRed,size: 18,)),
                    Container(
                      margin:EdgeInsets.only(right: 5),
                      child: Align(
                        alignment: Alignment.topLeft,

                        child:  Text("5.0",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                      ),
                    ) ,
                    Align(
                      alignment: Alignment.topLeft,
                      child:  Text("(25)",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                    ) ,
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,10),
                child:
                Align(
                  alignment: Alignment.topLeft,
                  child:  Text("14 Aza St. Jerusalem Israel",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w400,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                ) ,
              ),
              separateurHorizontal(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(25,2,25,0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("1 study Room",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                        Text("Host : Lizzy",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/profilePicture.png"),
                            fit: BoxFit.cover)
                    ),
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              separateurHorizontal(),
              buildDescText(),
              separateurHorizontal(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25,2,25,0),
                  child: Text("FEATURES".toUpperCase(),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                ),
              ),
              buildEquipement(Features(true, true,true ,true, true,true,true,true,4,[Station(SittingTable(2,4), Screen("dell",["hdmi","dp"],2,2), true),
                Station(SittingTable(3,3), Screen("hp",["rgb"],5,3), true)], ["US to UK"], ["none"], Kitchen(true, true, false,true, ["none"],["dont touch the cake"]))),
              separateurHorizontal(),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,5),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin:EdgeInsets.only(right: 5),
                        child: Icon(Icons.star,color: Constants.sitWithMeRed,size: 25,)),
                    Container(
                      margin:EdgeInsets.only(right: 5),
                      child: Align(
                        alignment: Alignment.topLeft,

                        child:  Text("4.38",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,),
                      ),
                    ) ,
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13,0,25,10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child:  Text("(45 reviews)",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                ),
              ) ,
              SizedBox(height: 25,),
              Padding(
                padding: EdgeInsets.fromLTRB(13,2,25,10),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePicture.png"),
                              fit: BoxFit.cover)
                      ),
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Lizzy",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,),
                        Text("May 2021",style: TextStyle(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,)
                      ],
                    )
                  ],
                ),
              ),
              commentsWidget(),
            ],
          ),

        ),
      ),
      bottomNavigationBar: Material(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: MaterialButton(
              color:  Constants.sitWithMeGreen,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Payer()));
              },
              child: new Text("Check availability",style: TextStyle(color: Colors.white),)
          ),
        ),
      ),
    );
  }



  Column buildEquipement(Features features)
  {
    TextStyle bare= TextStyle(color:Colors.grey,decoration: TextDecoration.lineThrough);
    TextStyle active= TextStyle(color:Colors.black);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Wi-Fi",style: features.wifi? active: bare),
              Icon(Icons.wifi,color: features.wifi?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Smoke Free Zone",style: features.SmokeFreeZone? active: bare),
              Icon(Icons.smoke_free,color: features.SmokeFreeZone?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Parking",style: features.Parking? active: bare),
              Icon(Icons.local_parking,color: features.Parking?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("air condition",style: features.airCond? active: bare),
              Icon(Icons.ac_unit,color: features.airCond?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Silent space",style: features.isSilence? active: bare),
              Icon(Icons.do_not_disturb_on_total_silence,color: features.isSilence?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("accesability",style: features.accesability? active: bare),
              Icon(Icons.accessible,color: features.accesability?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Shared Space",style: features.sharedSpace? active: bare),
              Icon(Icons.connect_without_contact,color: features.sharedSpace?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Corona friendly",style: features.coronaFriendly? active: bare),
              Icon(Icons.coronavirus,color: features.coronaFriendly?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("#usable outlets",style: features.numOfOutlet>0? active: bare),
              Text(features.numOfOutlet.toString(),style: features.numOfOutlet>0? active: bare)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("#Stations",style: features.stations.length>0? active: bare),
              Text(features.stations.length.toString(),style: features.numOfOutlet>0? active: bare)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("cafe kit",style: features.kitchen.cafeKit? active: bare),
              Icon(Icons.coffee,color: features.kitchen.cafeKit?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("fridge",style: features.kitchen.fridge? active: bare),
              Icon(Icons.emoji_food_beverage,color: features.kitchen.fridge?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("microwave",style: features.kitchen.microwave? active: bare),
              Icon(Icons.microwave,color: features.kitchen.microwave?Constants.sitWithMeRed:Colors.grey,)
            ],
          ),
        ),

    ],
    );
  }
  Container separateurHorizontal() {
    return Container(
      margin: EdgeInsets.all(15),
      width: 200,
      height: 1,
      color: Colors.black38,
    );
  }
  Column buildDescText() {
    int _maxLines1=3;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(18,5,25,10),
          child:
          Align(
            alignment: Alignment.topLeft,
            child:  Text("Clean Room with 4 screens on quiet street\ncentral, fantastic view of Bibis house",style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w400,letterSpacing: 0.2),overflow: TextOverflow.ellipsis,maxLines: _maxLines1,),
          ) ,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(18,10,25,10),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DescriptionDetails()));
            },
            child: Row(
              children: <Widget>[
                Text("See more",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 16),),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        )
      ],
    );
  }


  Container buildImageSlider(BuildContext context) {
    return Container(
        height: 250,
        child: PageView.builder(
            controller: _pageController,
            itemCount: widget._property.images.length,
            itemBuilder: (
                context,index){
              return Image.asset(widget._property.images[_currentIndex],fit: BoxFit.cover,);
            }
        )
    );
  }

  Align buildWidgetImageIndicator(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 225),
        child: SliderIndicator(
          length: widget._property.images.length,
          activeIndex: _currentIndex,
          indicator: Icon(Icons.radio_button_unchecked,color: Colors.white,size: 10,),
          activeIndicator: Icon(Icons.fiber_manual_record,color: Colors.white,size: 12,),
        ),
      ),
    );
  }

  Align buildCloseWidget(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,

      child: Container(
        padding: EdgeInsets.all(0),
        height: 45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white
        ),
        margin: EdgeInsets.only(left: 13,top: 40),
        child: IconButton(icon: Icon(Icons.arrow_back,size: 18,),
          color: Colors.black,
          onPressed: (){Navigator.of(context).pop();},
        ),
      ),
    );
  }

  Widget buildContainerPrice() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(left: 10,top: 10),
        padding: EdgeInsets.symmetric(vertical: 6,horizontal:12 ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("20₪",style: TextStyle(color: Colors.white),),
            Text("/hour",style: TextStyle(color: Colors.white,fontSize: 16),),
          ],
        ),
      ),
    );
  }
  buildHeartWidget(BuildContext context) {


    return Container(
        margin: EdgeInsets.only(right: 13,top: 40),
        alignment: Alignment.topRight,
        child:GestureDetector(
          child:Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              //  borderRadius: BorderRadius.circular(25)
            ),
            child: Icon(!_liked?Icons.favorite_border:Icons.favorite,color:!_liked? Colors.black:Constants.sitWithMeRed,size: 20,),
          ),
          onTap: (){
            setState(() {
              _liked=!_liked;
            });
          },
        )
    );
  }

  buildDescreption(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text("Quiet, Equipped Space, Perfect for a days work!",style: TextStyle(fontSize: 20,color: Colors.black,),overflow: TextOverflow.ellipsis,maxLines: 2,),
    );
  }
}
