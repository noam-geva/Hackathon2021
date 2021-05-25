class Address {
  String _country;
  String city;
  String _street;
  String _streetNum;
  String _postalCode;

  Address(this._country, this.city, this._street, this._streetNum, this._postalCode);

  String get codePostal => _postalCode;

  set codePostal(String value) {
    _postalCode = value;
  }

  String get streetNum => _streetNum;

  set streetNum(String value) {
    _streetNum = value;
  }

  String get street => _street;

  set street(String value) {
    _street = value;
  }

  String get vila => city;

  set vila(String value) {
    city = value;
  }

  String get pays => _country;

  set pays(String value) {
    _country = value;
  }
}