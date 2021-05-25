import 'package:airbnb_clone/Model/WorkSpace.dart';

class User{
  String name;
  String password;
  String creditCardNumber;
  String profilePic;
  String greenCard;

  User(this.name,this.password,this.creditCardNumber,this.profilePic,this.greenCard);
}


class Admin{
  String name;
  String password;
  String bankAccount;
  String profilePic;
  List<WorkSpace> spaces;

  Admin(this.name,this.password,this.bankAccount,this.profilePic,this.spaces);
}