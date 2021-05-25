
import 'package:airbnb_clone/Constants/Constants.dart';
import 'package:airbnb_clone/Routes/Properties.dart';
import 'package:flutter/material.dart';
import 'package:airbnb_clone/flutter_counter.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart' as dp;

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  int _defaultValue=0;
  int _defaultValuePerson=0;

  var _defaultValueNote=3.5;

  //RangeValues _prixRange=RangeValues(25,180);

  var _rangePriceValues=RangeValues(0,500);
  var _rangeHoursValues=RangeValues(0,24);

  var _selectedPeriod=dp.DatePeriod(DateTime.now().add(Duration(days: 4)), DateTime.now().subtract(Duration(days: 4)));

  var _apartementSelected=true;
  var _hotelSelected=true;
  var _chambreSelected=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20,left: 10),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                    onPressed: (){
                      Navigator.pop(context);
                    },),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Location".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 12,),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Material(
                    color: Colors.white,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Where do you want to work ?",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.room,color: Constants.sitWithMeGrey,)
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Type".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 12,),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: CheckboxListTile(
                    title: Text("Apartment"),
                      value: _apartementSelected,
                      onChanged: (value){
                        setState(() {
                          _apartementSelected=value;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: CheckboxListTile(
                      title: Text("Office"),
                      value: _chambreSelected,
                      onChanged: (value){
                        setState(() {
                          _chambreSelected=value;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: CheckboxListTile(
                      title: Text("Large Workspace"),
                      value: _hotelSelected,
                      onChanged: (value){
                        setState(() {
                          _hotelSelected=value;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Details".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 12,),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Material(
                      borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                      //margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Number of Workers",style: TextStyle(fontSize: 15),),
                          Counter(
                            minValue: 0,
                            maxValue: 10,
                            decimalPlaces: 0,
                            initialValue: _defaultValue,
                            color: Constants.sitWithMeGrey,
                            step: 1,
                            textStyle: TextStyle(letterSpacing: 10),
                            onChanged: (value0){
                              setState(() {
                                _defaultValue=value0;
                              });
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ), /** **/
               /** **/
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                    //  margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Number of Screens",style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,),
                         Counter(
                            minValue: 0,
                            maxValue: 10,
                            decimalPlaces: 0,
                            color: Constants.sitWithMeGrey,
                            initialValue: _defaultValuePerson,
                            step: 1,
                            textStyle: TextStyle(letterSpacing: 10),
                            onChanged: (value){
                              setState(() {
                                _defaultValuePerson=value;
                              });
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Rating".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 12,),),
                  ),
                ),
               /** **/
               Padding(
                  padding: const EdgeInsets.all(15),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                     // margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Stars",style: TextStyle(fontSize: 15),),
                         Counter(
                            minValue: 1,
                            maxValue: 5,
                            decimalPlaces: 1,
                            color: Constants.sitWithMeGrey,
                            initialValue: _defaultValueNote,
                            step: 0.5,
                            textStyle: TextStyle(letterSpacing: 0),
                            onChanged: (value1){
                              setState(() {
                                _defaultValueNote=value1;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                /** **/
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Price Range".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 12,),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Material(
                    color: Colors.white,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                   //   margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Price",style: TextStyle(fontSize: 15),),
                          RangeSlider(
                            min: 0,
                           max: 500,
                           activeColor: Constants.sitWithMeGrey,
                           inactiveColor: Constants.sitWithMeRed,
                           labels: RangeLabels(_rangePriceValues.start.toString().split(".").first+" NIS",_rangePriceValues.end.toString().split(".").first+" NIS"),
                           values: _rangePriceValues,
                            divisions: 5,
                            onChanged: (RangeValues range){
                              setState(() {
                               _rangePriceValues=range;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("hours".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 12,),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Material(
                    color: Colors.white,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      //   margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("time",style: TextStyle(fontSize: 15),),
                          RangeSlider(
                            min: 0,
                            max: 24,
                            activeColor: Constants.sitWithMeGrey,
                            inactiveColor: Constants.sitWithMeRed,
                            labels: RangeLabels(_rangeHoursValues.start.toString().split(".").first+" :00",_rangeHoursValues.end.toString().split(".").first+" :00"),
                            values: _rangeHoursValues,
                            divisions: 48,
                            onChanged: (RangeValues range){
                              setState(() {
                                _rangeHoursValues=range;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Choose a date to Work".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 12,),),
                  ),
                ),
                dp.RangePicker(
                  selectedPeriod: _selectedPeriod,
                  onChanged: (datePeriod){
                    setState(() {
                      _selectedPeriod=datePeriod;
                    });

                  },
                  selectableDayPredicate: _isSelectable,
                  datePickerStyles: styles,
                  firstDate: DateTime.now().subtract(Duration(days: 1)),
                  lastDate: DateTime.now().add(Duration(days:  365)),

                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Material(
                    color: Colors.white,
                    elevation: 6,
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                    //  borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Properties()),
                        );
                      },
                      splashColor: Colors.white,
                      hoverColor: Constants.sitWithMeGrey,
                      child: Container(
                       // margin: EdgeInsets.symmetric(vertical: 25),
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black87),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("Filter"),
                            Icon(Icons.apps)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }

  bool _isSelectable(DateTime day) {
    List<DateTime> eventsDates = [

      DateTime(2020,09,12),
      DateTime.now().add(Duration(days: 4)),
      DateTime.now().add(Duration(days: 5)),
      DateTime.now().add(Duration(days: 10))
    ];
    return !eventsDates.any((eventDate) {
      int diffDays = eventDate.difference(day).inDays;
      return (diffDays == 0);
    });
  }
  dp.DatePickerRangeStyles styles = dp.DatePickerRangeStyles(
      selectedPeriodLastDecoration: BoxDecoration(
          color: Constants.sitWithMeGrey,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24.0),
              bottomRight: Radius.circular(24.0))),
      selectedPeriodStartDecoration: BoxDecoration(
        color: Constants.sitWithMeGrey,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24.0),
            bottomLeft: Radius.circular(24.0)
        ),
      ),
      selectedPeriodMiddleDecoration: BoxDecoration(
          color: Constants.sitWithMeGrey, shape: BoxShape.rectangle),
      nextIcon: const Icon(Icons.arrow_right),
      prevIcon: const Icon(Icons.arrow_left),
     // dayHeaderStyleBuilder: _dayHeaderStyleBuilder
  );
}
