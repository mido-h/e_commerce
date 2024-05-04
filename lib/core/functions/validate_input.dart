import 'package:get/get.dart';

validateInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Enter valid user name";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Enter valid email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Enter valid phone number";
    }
  }
  if (val.length < min) {
    return "The user name si too short";
  }
  if (val.length > max) {
    return "The user name si too long";
  }
  if (val.isEmpty) {
    return "Can't be empty";
  }
}
