import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/profile/setting_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:food_delivery/controller/Controller.dart';
import 'package:food_delivery/themes/text_theme.dart';
import 'package:food_delivery/utils/sizes.dart';
import 'package:food_delivery/widgets/text_string.dart';


import 'my_orders_screen.dart';
import 'order_details.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    List profileNavigator=[MyOrders(),MyOrders(),MyOrders(),
      Setting(),Setting(),Setting()];
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: TSizes.spaceBtwSection,),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.search)),
            ),
            SizedBox(height: TSizes.spaceBtwSection,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(TText.onBoardingTitle1,
                        style: context.theme.textTheme.headlineLarge//TTextTheme.lightTextThem.headlineLarge
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Container(
              height: 80.h,
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40.sp,
                    backgroundImage: Image.asset("assets/images/profile.png",fit: BoxFit.cover,).image,

                  ),
                  Expanded(
                    child: ListTile(
                      title: Text("Mohammed",
                      style:context.theme.textTheme.headlineLarge,) ,
                      subtitle: Text("Mohammed@gmail.com",
                        style: context.theme.textTheme.labelMedium// TTextTheme.lightTextThem.labelMedium,
                      ) ,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Expanded(
             // height: 200,
             // width: MediaQuery.sizeOf(context).width,
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 80.h,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListTile(
                        onTap: (){
                        Get.to(profileNavigator[index]);
                        },
                        title: Text(c.profiLelable[index],
                          style:  context.theme.textTheme.headlineSmall//TTextTheme.lightTextThem.headlineSmall,
                        ) ,
                        subtitle: Text(c.profiLeSublable[index],
                          style:  context.theme.textTheme.labelMedium//TTextTheme.lightTextThem.labelMedium,
                        ) ,
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    );

                  },
                  separatorBuilder:(BuildContext context, int index) {
                    return Divider();
                  },
                  itemCount:c.profiLelable.length ),
            )
          ],
        ),
      ),
    );

  }
}
