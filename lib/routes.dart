import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/middleware/my_middleware.dart';
import 'package:e_commerce/view/screen/auth/forget_password/check_email.dart';
import 'package:e_commerce/view/screen/auth/forget_password/forgetpassword.dart';
import 'package:e_commerce/view/screen/auth/forget_password/resetpassword.dart';
import 'package:e_commerce/view/screen/auth/forget_password/success_reset_password.dart';
import 'package:e_commerce/view/screen/auth/success_signup.dart';
import 'package:e_commerce/view/screen/auth/verifycode.dart';
import 'package:e_commerce/view/screen/auth/verifycodesignup.dart';
import 'package:e_commerce/view/screen/language.dart';
import 'package:e_commerce/view/screen/auth/login.dart';
import 'package:e_commerce/view/screen/onboarding.dart';
import 'package:e_commerce/view/screen/auth/signup.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  //Auth
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword, page: () => SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => SuccessSignUp()),
  GetPage(name: AppRoute.checkEmail, page: () => const CheckEmail()),
  GetPage(
      name: AppRoute.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),

  // AppRoute.login: (context) => const Login(),
  // AppRoute.signUp: (context) => const SignUp(),
  // AppRoute.forgetPassword: (context) => const ForgetPassword(),
  // AppRoute.verifyCode: (context) => const VerifyCode(),
  // AppRoute.resetPassword: (context) => const ResetPassword(),
  // AppRoute.successResetPassword: (context) => SuccessResetPassword(),
  // AppRoute.successSignUp: (context) => SuccessSignUp(),
  // AppRoute.checkEmail: (context) => const CheckEmail(),
  // AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),

  //OnBoarding and language

  GetPage(name: AppRoute.language, page: () => const Language()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),

  // AppRoute.language: (context) => const Language(),
  // AppRoute.onBoarding: (context) => const OnBoarding()
];
