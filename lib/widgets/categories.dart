import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import 'package:url_launcher/url_launcher_string.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "icon": "assets/icons/person.svg",
        "text": "واتس أب",
        "funName": "whatsapp://send?phone=+966551337260"
      },
      {
        "icon": "assets/icons/twitter.svg",
        "text": "تويتر",
        "funName":
            "https://l.facebook.com/l.php?u=https%3A%2F%2Ftwitter.com%2Fahmed_hantop%3Ft%3DzVYj5R1WQxQy9fc1MQTlaA%26s%3D09%26fbclid%3DIwAR259E9ac77BOs3et0EtPC66aoyOQQEXFBGaWehxi_Ci-dC03LEBmk4uTj4&h=AT3z03v1hJT-BWzvsqQCthyxcL3jaLDbvCLsksIk6oKWwY9vL1-yxwdcB1iHF_L0jxPWTKYumTda3yIy_z8A9RVV1hK3rRs-bo1FCrDYVglrrjCQxQOoT-eqBwvMmuctwDR-doZvig-GHWbbWzLD5Q"
      },
      {
        "icon": "assets/icons/facebook-2.svg",
        "text": "فيس بوك",
        "funName": "https://www.facebook.com/MrCSEngineer"
      },
      {
        "icon": "assets/icons/Mail.svg",
        "text": "الايميل",
        "funName": "mailto:ahmedhantop@gmail.com"
      },
      {
        "icon": "assets/icons/Phone.svg",
        "text": "اتصال",
        "funName": "tel:+249992690900"
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                    icon: categories[index]["icon"],
                    text: categories[index]["text"],
                    myurl: categories[index]["funName"],
                  ))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.myurl,
  }) : super(key: key);

  final String icon, text, myurl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //       canLaunchUrlString(myurl).then(
        //   (canLaunch) {
        //   if(canLaunch){
        //     launchUrlString(myurl);
        //   }
        //   else {
        //       throw 'Could not launch $myurl';
        //   }

        // });
      },
      child: SizedBox(
          width: 55,
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xfffEDF),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(icon),
                  )),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
