import 'package:floorplan/styles/colors.dart';
import 'package:flutter/material.dart';

class Common {
  Container textInputBox(
      {required TextEditingController controller, required String labelText}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 18.0),
      decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 12.0,
              offset: const Offset(0.0, 6.0),
            )
          ]),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
