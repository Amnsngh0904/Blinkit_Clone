import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25),
          Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "16 Minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "HOME - ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 12,
                        ),
                        Uihelper.customText(
                          text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.normal,
                          fontsize: 12,
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                  ],
                ),
              ),

              Positioned(
                right: 20,
                bottom: 80,
                child: CircleAvatar(
                  backgroundColor: Color(0XFFFFFFFF),
                  radius: 20,
                  child: Icon(Icons.person),
                ),
              ),

              Positioned(
                left: 20,
                bottom: 20,
                child: Uihelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
