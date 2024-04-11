import 'package:ecommerse/common/image/rounded_image.dart';
import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/navigation_menu.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const EAppBar(showBackArrow: true,title: Text("Profile"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defautSpace),
          child: Center(
            child: Column(
              
              children: [
                // circular avatar
                const ERoundedImage(imgUrl: EImages.user,width: 80,height: 80,radius: 100,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                TextButton(onPressed: (){}, child:const Text("Change Profile Picture")),

                const SizedBox(height: ESizes.spaceBtwItems/2,),
                const Divider(),
                const SizedBox(height: ESizes.spaceBtwItems,),
                const ESectionHeading(heading: "Profile Information" ,showActionButton: false,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                ProfileTile(subtitle: "Name",title: "Coding with Jatin", onPressed: ()=> Get.to(const NavigationMenu()),),                
                ProfileTile(subtitle: "Name",title: "Coding with Jatin",onPressed: (){},),                
                const SizedBox(height: ESizes.spaceBtwItems,),
                const Divider(),
                const SizedBox(height: ESizes.spaceBtwItems,),
                const ESectionHeading(heading: "Personal Information",showActionButton: false,),
                const SizedBox(height: ESizes.spaceBtwItems,),
                ProfileTile(subtitle: "Name",title: "Coding with Jatin",onPressed: (){},),                
                ProfileTile(subtitle: "Name",title: "Coding with Jatin",onPressed: (){},),                
                ProfileTile(subtitle: "Name",title: "Coding with Jatin",onPressed: (){},),                
                ProfileTile(subtitle: "Name",title: "Coding with Jatin",onPressed: (){},),            
                const Divider(),
                const SizedBox(height: ESizes.spaceBtwItems,),
                TextButton(onPressed: (){}, child:const Text("Close Account",style: TextStyle(color: Colors.red),))    
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key, required this.subtitle, required this.title, this.onPressed,
  });
  final String subtitle;
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:ESizes.spaceBtwItems/1.5 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex: 3, child: Text(subtitle,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,)),
            Expanded(flex: 5, child: Text(title,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
            const Expanded(child:  Icon(Iconsax.arrow_right_34,size: 18,)),
         
        
          ],
        ),
      ),
    );
  }
}