import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Model/WorkSpace.dart';
import 'package:airbnb_clone/Routes/BookingScreen.dart';
import 'package:airbnb_clone/Routes/Property-details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:airbnb_clone/Widgets/ImageView.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

import 'Payer.dart';

class Properties extends StatefulWidget {

  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  var _pageController=PageController();
  var _currentIndex=0;

  var _liked=false;


  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        _currentIndex=_pageController.page.round();
      });
    });

    List<Widget> properties = [

     new ImageProperty(true, Constants.spaces[1]),
     new ImageProperty(false, Constants.spaces[0]),
     //_buildPadding(),
    ];
    return Scaffold(

      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            for(Widget prop in properties)
              prop,

          ],
        ),
      ),
    );

  }
  Container buildImageSlider(BuildContext context,PageController p,int index,WorkSpace property) {
    return Container(
      // margin: EdgeInsets.all(20),
        child: PageView.builder(
            controller: p..addListener(() {
              setState(() {
                index=p.page.round();
              });
            }),
            itemCount: property.images.length,
            itemBuilder: (
                context,index){
              return ClipRRect(
                  child:Image.asset(property.images[index],fit: BoxFit.cover,));
            }
        )
    );
  }

  Align buildWidgetImageIndicator(BuildContext context,WorkSpace property, int currentindex) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SliderIndicator(
            length: property.images.length,
            activeIndex: currentindex,
            indicator:Padding( padding:EdgeInsets.all(3),child:Icon(Icons.fiber_manual_record,color: Colors.white70,size: 10,)),
            activeIndicator: Padding(padding:EdgeInsets.all(3),child:Icon(Icons.fiber_manual_record,color: Colors.white,size: 14,),)
        ),
      ),
    );
  }

  buildHeartWidget(BuildContext context) {

    return Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.topRight,
        child:GestureDetector(
          child:Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              //  borderRadius: BorderRadius.circular(25)
            ),
            child: Icon(!_liked?Icons.favorite_border:Icons.favorite,color:!_liked? Colors.black:Constants.sitWithMeRed,size: 25,),
          ),
          onTap: (){
            setState(() {
              _liked=!_liked;
            });
          },
        )
    );
  }

  _buildPadding(WorkSpace workSpace) {
    return   Padding(
      padding: EdgeInsets.only(bottom: 5),
      child:   InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PropertyDetails(workSpace)),
          );
        },
        child:Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0,0,0,15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),

              ),
              height: 200,
              child: Stack(
                children: <Widget>[
                  buildImageSlider(context,PageController(),_currentIndex,workSpace),
                  buildWidgetImageIndicator(context,Constants.spaces[1],_currentIndex),
                  buildHeartWidget(context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB( 35,0,35, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text("Jerusalem",style: TextStyle(color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w400),),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text("private office",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text("Rehavia",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child:  Text("75 NIS/hour",style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w400),),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Constants.sitWithMeGreen,size: 12,),
                          Align(
                            alignment: Alignment.topLeft,
                            child:  Text("5.0",style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                          ) ,
                          Align(
                            alignment: Alignment.topLeft,
                            child:  Text("(25)",style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
                          ) ,
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Constants.sitWithMeGrey
                    ),
                    child: InkWell(
                      child: Text("reserve your spot!",style: TextStyle(color: Colors.white),),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payer()),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),


          ],
        ), ),
    );
  }

}
