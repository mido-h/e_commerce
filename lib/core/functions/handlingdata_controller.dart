import 'package:e_commerce/core/class/status_request.dart';

handlingData(respones) {
  if (respones is StatusRequest) {
    return respones;
  } else {
    return StatusRequest.success;
  }
}
