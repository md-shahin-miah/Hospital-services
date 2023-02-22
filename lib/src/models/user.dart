class User {
  String? _id, _name, _email, _kelamin, _status, _telephone;

  User(this._name, this._email, this._kelamin, this._status, this._telephone);
  User.withId(this._id, this._name, this._email, this._kelamin, this._status,
      this._telephone);

  String? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get kelamin => _kelamin;
  String? get status => _status;
  String? get telephone => _telephone;

  set setName(String newName) {
    if (100 >= newName.length && newName.length > 0) {
      this._name = newName;
    }
  }

  set setEmail(String newEmail) {
    if (100 >= newEmail.length && newEmail.length > 0) {
      this._email = newEmail;
    }
  }

  set setKelamin(String newKelamin) {
    if (100 >= newKelamin.length && newKelamin.length > 0) {
      this._kelamin = newKelamin;
    }
  }

  set setStatus(String newStatus) {
    if (100 >= newStatus.length && newStatus.length > 0) {
      this._status = newStatus;
    }
  }

  set setTelephone(String newTelephone) {
    if (100 >= newTelephone.length && newTelephone.length > 0) {
      this._telephone = newTelephone;
    }
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['name'] = _name;
    map['email'] = _email;
    map['kelamin'] = _kelamin;
    map['status'] = _status;
    map['telephone'] = _telephone;
    return map;
  }

  User.fromJson(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._email = map['email'];
    this._kelamin = map['kelamin'];
    this._status = map['status'];
    this._telephone = map['telephone'];
  }
}
