class ChatModel {
  var _message = "";
  var _isSender = false;
  var _date = "";

  get date => _date;

  set date(value) {
    _date = value;
  }

  get isSender => _isSender;

  set isSender(value) {
    _isSender = value;
  }

  get message => _message;

  set message(value) {
    _message = value;
  }
}
