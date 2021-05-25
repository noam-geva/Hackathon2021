import 'dart:ui';

import 'package:airbnb_clone/Model/Address.dart';
import 'package:airbnb_clone/Model/WorkSpace.dart';
import 'package:airbnb_clone/Model/AbstructSpace.dart';
import 'package:airbnb_clone/Model/UserAdminModels.dart';
class Constants {

  static List<WorkSpace> spaces=[

    WorkSpace(
      "private office",
      ['assets/images/img_1.png',"assets/images/img_2.png"],
      30,
      Address("israel", "Dimona", "abba shel shabbat", "9", "09025"),
      "description  office over the nukes ",
    4.2,
      Features(true, false, true, false,true, false,true,false,4, [Station(SittingTable(1,1), Screen("dell",["hdmi"],1,1), true)], ["EU to UK"], ["no spliters"],
          Kitchen(true,true,true,true,["none"],["dont feed the cat"])),
  false,3
    ),


    WorkSpace(
      "my room",
      ['assets/images/img_3.png',"assets/images/2.jpg"],
      10,
      Address("israel", "jerusalem", "azza",  "55", "16025"),
      "description  right above the burger room",
      4.0,
      Features(false,true, false,true, false, true,false, true, 1, [Station(SittingTable(1,1), Screen("dell",["hdmi"],1,1), true)], ["EU to UK"], ["no spliters"],
          Kitchen(true,true,true,true,["none"],["dont feed the cat"])),
      false,
      1
    ),
  ];


  static List<Admin> admins=[
    Admin("aviram","1234","1","C:\\Users\\noamg\\AndroidStudioProjects\\sit_with_me\\assets\\images\\aviram.jpeg" ,spaces)
  ];

  static List<User> users=[
  User("noam","1234","9",
  "C:\\Users\\noamg\\AndroidStudioProjects\\sit_with_me\\assets\\images\\noam.jpeg",
      "C:\\Users\\noamg\\AndroidStudioProjects\\sit_with_me\\assets\\images\\greenpass.png"),
    User("ari","1234","5",
        "C:\\Users\\noamg\\AndroidStudioProjects\\sit_with_me\\assets\\images\\ari.jpeg",
        "C:\\Users\\noamg\\AndroidStudioProjects\\sit_with_me\\assets\\images\\greenpass.png")
  ];










  static List<absrtrucSpaceForFutureDataBase> extraSpaces=[
    absrtrucSpaceForFutureDataBase("space1",1,"description for space1","assets/images/properties/homeoffice1.jpg"),
  absrtrucSpaceForFutureDataBase("space2",2,"description for space2","assets/images/properties/homeoffice2.jpg"),
  absrtrucSpaceForFutureDataBase("space3",3,"description for space3","assets/images/properties/homeoffice3.jpg"),
  absrtrucSpaceForFutureDataBase("space4",4,"description for space4","assets/images/properties/homeoffice4.jpg"),
  ];


  static Color sitWithMeRed= Color(0xffFF5A5F);
  static Color sitWithMeGreen= Color(0xff00A699);
  static Color sitWithMeGrey= Color(0xFF424242);

}

