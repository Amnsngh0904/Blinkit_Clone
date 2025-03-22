import 'package:blinkit_clone/repository/screens/bottomnav/bottomnav.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Uihelper.customImage(img: "Blinkit Onboarding Screen.png"),

            SizedBox(height: 30),

            Uihelper.customImage(img: "logo.png"),

            SizedBox(height: 20),

            Uihelper.customText(
              text: "India's last minute app",
              color: Color(0XFF000000),
              fontweight: FontWeight.w700,
              fontsize: 24,
              fontfamily: "bold",
            ),

            SizedBox(height: 20),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),

                    Uihelper.customText(
                      text: "Aman Singh",
                      color: Color(0XFF000000),
                      fontweight: FontWeight.w500,
                      fontsize: 15,
                      fontfamily: "regular",
                    ),

                    SizedBox(height: 5),

                    Uihelper.customText(
                      text: "80745XXXXX",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w700,
                      fontsize: 14,
                      fontfamily: "bold",
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottomnav(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Uihelper.customText(
                              text: "Login With",
                              color: Color(0XFFFFFFFF),
                              fontweight: FontWeight.w700,
                              fontsize: 15,
                              fontfamily: "bold",
                            ),

                            SizedBox(width: 5),
                            Uihelper.customImage(img: "zomato logo.png"),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 5),

                    Uihelper.customText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w600,
                      fontsize: 10,
                    ),

                    SizedBox(height: 20),

                    Uihelper.customText(
                      text: "or login with phone number",
                      color: Color(0XFF269237),
                      fontweight: FontWeight.w600,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
