import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class CapPage extends StatefulWidget {
  const CapPage({super.key});

  @override
  State<CapPage> createState() => _CapPageState();
}

class _CapPageState extends State<CapPage> {
  final List<Map<String, dynamic>> capPageGridItems = [
    {
      "description": "Trad cap black",
      "price": "\$650",
      "images":
          "https://www.nicepng.com/png/full/57-570835_spacex-x-cap-patagonia-p-6-label-trad.png",
    },
    {
      "description": "Trump Baseball Cap",
      "price": "\$850",
      "images":
          "https://www.nicepng.com/png/full/15-154630_trump-make-america-great-again-flat-bill-cap.png",
    },
    {
      "description": "Graduation Cap & Tassel",
      "price": "\$800",
      "images":
          "https://www.nicepng.com/png/full/5-59733_graduation-cap-png-transparent-image-graduation-cap-tassel.png",
    },
    {
      "description": "Gotham City - Cap",
      "price": "\$620",
      "images":
          "https://www.nicepng.com/png/full/329-3292533_mitchell-ness-nhl-pittsburgh-penguins-gotham-city-cap.png",
    },
    {
      "description": "Pink Baseball Cap",
      "price": "\$900",
      "images":
          "https://www.nicepng.com/png/full/8-86242_clipart-download-cap-pink-png-clip-art-image.png",
    },
    {
      "description": " Navy Logo Cap",
      "price": "\$350",
      "images":
          "https://www.nicepng.com/png/full/77-773364_6640-u-s-navy-logo-cap-cotton-coyote.png",
    },
    {
      "description": "Swish Embassy - Baseball Cap",
      "price": "\$550",
      "images":
          "https://www.nicepng.com/png/full/99-993422_swish-headwear-swish-embassy-baseball-cap.png",
    },
    {
      "description": "New Era New York Yankees Cap",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/77-777184_new-era-timberland-tan-color-new-york-yankees.png",
    },
    {
      "description": "Fishin' Chill Cap ",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/325-3251975_mens-lets-go-fishin-chill-cap-lets-go.png",
    },
    {
      "description": "High Rise Chill Cap",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/328-3284628_go-fish-bear-high-rise-chill-cap-baseball.png",
    },
    {
      "description": "Damage Ball Cap",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/880-8807061_chicago-white-sox-damage-ball-cap-baseball-cap.png",
    },
  ];
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.blue));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarText: "Caps"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: capPageGridItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 252,
          ),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppDarkColors.black10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.network(
                        "${capPageGridItems.elementAt(index)["images"]}",
                        width: double.infinity,
                        height: 160,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14, right: 14),
                      child: Divider(
                        color: AppColors.blue,
                        thickness: 0.1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${capPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${capPageGridItems.elementAt(index)["description"]}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppDarkColors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 15,
                  top: 166,
                  child: InkWell(
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: AppColors.blue,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
