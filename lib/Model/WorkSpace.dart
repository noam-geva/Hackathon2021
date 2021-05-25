import 'package:airbnb_clone/Model/Address.dart';

class WorkSpace {
  String _title;
  List<String> _images;
  int _price;
  Address _address;
  String _description;
  double _rating;
  Features _features;
  bool _isPrivate; //else, it is a business
  int _guestNum;



  Features get feature => _features;


  Address get address => _address;

  set address(Address value) {
    _address = value;
  }

  set feature(Features value) {
    _features = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }



  WorkSpace( this._title, this._images, this._price, this._address, this._description,
  this._rating, this._features, this._isPrivate, this._guestNum);


  List<String> get images => _images;

  set images(List<String> value) {
    _images = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
  }


  String get description => _description;

  set description(String value) {
    _description = value;
  }

  double get rating => _rating;

  set rating(double value) {
    _rating = value;
  }
}



class Features {
  bool wifi;
  bool SmokeFreeZone ;
  bool Parking;
  bool airCond;
  bool isSilence;
  bool accesability;
  bool sharedSpace; //shared space = true, individual space = false
  bool coronaFriendly;
  int numOfOutlet;
  List<Station> stations;
  List<String> _adaptors;
  List<String> _spliters;
  Kitchen kitchen;




  Features( this.wifi,this.SmokeFreeZone, this.Parking,this.airCond,this.isSilence,this.accesability,
  this.sharedSpace,this.coronaFriendly ,this.numOfOutlet, this.stations, this._adaptors, this._spliters,this.kitchen);

}

class Station{
  SittingTable _table;
  Screen _screen;
  bool hasAccesories;

  Station(this._table,this._screen,this.hasAccesories);
}



class SittingTable {
  double _length;
  double _width;

  SittingTable(this._length,this._width);
}

class Screen{
  String _manufacture;
  List<String> _connections; //multiple connections? array, list?
  double _hight;
  double _width;

  Screen(this._manufacture,this._connections,this._hight,this._width);
}

class Kitchen{
  bool cafeKit;
  bool cutlery;
  bool microwave;
  bool fridge;
  List<String> _dieteryRequaerments;
  List<String> _restriction;

  Kitchen(this.cafeKit,this.cutlery,this.microwave,this.fridge
      ,this._dieteryRequaerments, this._restriction);
}

