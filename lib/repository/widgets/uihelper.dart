import 'package:flutter/material.dart';

class Uihelper {
  static customImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static customText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  static CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 37,
      width: 380,
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0XFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-creams'",
          prefixIcon: Icon(Icons.search_rounded),
          suffixIcon: Icon(Icons.mic),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
