import 'package:ecommerse/features/authenticaton/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/constants/texts.dart';
import 'package:ecommerse/utils/device/device_utility.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});
  
  @override
  Widget build(BuildContext context){
    // creating backend lets go
    final controller = Get.put(OnBoardingController());

    return  Scaffold(
      body: Stack(
        children: [
          // Horizotal scrolling pages
           PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children:const[
              OnBoardingWidget(
              image: EImages.onboardingImage1,
              title: ETexts.onBoardingTitle1,
              subTitle: ETexts.onBoardingSubTitle1,),

              OnBoardingWidget(
              image: EImages.onboardingImage2,
              title: ETexts.onBoardingTitle2,
              subTitle: ETexts.onBoardingSubTitle2,),

              OnBoardingWidget(
              image: EImages.onboardingImage3,
              title: ETexts.onBoardingTitle3,
              subTitle: ETexts.onBoardingSubTitle3,)
            ],
          ),
          // Adding Skip button
           const OnBoardingSkipButton(),        
          // Dot for smooth navigation Smooth Page indicator
           const OnBoardingDotDesign(),
          // Circluar Button
           const OnBoardingNextButton()
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=EHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight()+25,
      right: ESizes.defautSpace,
      child: ElevatedButton(
        onPressed: (){OnBoardingController.instance.nextPage();},
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark? EColors.primary:EColors.black),
        child:const Icon(Iconsax.arrow_right_1)));
  }
}

class OnBoardingDotDesign extends StatelessWidget {
  const OnBoardingDotDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark =EHelperFunctions.isDarkMode(context); // this is making it for theme based 
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight()+25,
      left: ESizes.defautSpace,
      child: SmoothPageIndicator(
        count: 3, 
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
      effect: ExpandingDotsEffect(activeDotColor: dark? EColors.dark:EColors.light, dotHeight: 6),));
  }
}

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned( 
      height: EDeviceUtils.getAppBarHeight()+30,
      right: ESizes.defautSpace, 
      child: TextButton(onPressed: () {OnBoardingController.instance.skipPage();},child: const Text("Skip"),));
  }
}

class  OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key, required this .image, required this.subTitle, required this.title,
  });

  final String image , title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defautSpace),
      child: Column(
        children: [
          Image(
            width: EHelperFunctions.screenWidth()*0.8,
            height: EHelperFunctions.screenHeight()*0.6,
            image:  AssetImage(image)),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
              ),
            const SizedBox(
              height: ESizes.spaceBtwItems ,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
              )
            ],
      ),
    );
  }
}