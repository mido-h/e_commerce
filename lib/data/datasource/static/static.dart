import 'package:e_commerce/core/constant/imageassets.dart';
import 'package:e_commerce/data/model/onboardingmodel.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onboardinglist = [
  OnBoardingModel(
      title: "onBoardingtitle1".tr,
      body: 'We have 100K product,\n choose from them',
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "onBoardingtitle2".tr,
      body: 'Easy checkout and safe payment methods',
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "onBoardingtitle3".tr,
      body: 'Best tracker has been used',
      image: AppImageAsset.onBoardingImageThree),
  OnBoardingModel(
      title: "onBoardingtitle4".tr,
      body: 'Reliable and fast delivery',
      image: AppImageAsset.onBoardingImageFour),
];
