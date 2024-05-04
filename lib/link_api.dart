class AppLink {
  static const String server = "http://192.168.1.8/e_commerce";
  static const String test = "$server/";
  static const String images = "$server/images/";
  static const String imagesCategories = "$server/images/categories/";
  static const String imagesItems = "$server/images/items/";
  //========================Auth==================================//
  static const String signup = "$server/auth/signup.php";
  static const String verifycode = "$server/auth/verify_code.php";
  static const String login = "$server/auth/login.php";
  static const String checkEmail = "$server/auth/check_email.php";
  static const String verifycodeForgetPassword =
      "$server/auth/verify_code_forget_password.php";
  static const String resetPassword = "$server/auth/reset_password.php";
  //========================Homepage==================================//
  static const String homepage = "$server/home.php";
}
