class absrtrucSpaceForFutureDataBase {
  String _name;
  int _id;
  String _descreption;
  String _image;

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  absrtrucSpaceForFutureDataBase(this._name,this._id,this._descreption,this._image);

  String get descreption => _descreption;
  set descreption(String desc)
  {
    _descreption=desc;
  }
  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}