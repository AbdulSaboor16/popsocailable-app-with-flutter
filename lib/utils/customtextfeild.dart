import 'package:flutter/material.dart';

import 'color_constant.dart';

// class CustomTextField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       cursorColor: Color.fromARGB(255, 241, 239, 239),
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: Color.fromRGBO(255, 255, 255, 1),
//         hintStyle: TextStyle(
//           color: Color.fromARGB(255, 255, 255, 255),
//         ),
//         labelStyle: TextStyle(
//           color: ColorConstant.greyColor,
//           backgroundColor: ColorConstant.whiteColor,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
//         ),
//         hintText: 'Enter your Email',
//         labelText: 'Email saboor',
//       ),
//     );
//   }
// }

class CustomTextFieldEmail extends StatefulWidget {
  final String hintText;
  final String labelText;

  const CustomTextFieldEmail(
      {Key? key, required this.hintText, required this.labelText})
      : super(key: key);

  @override
  _CustomTextFieldEmailState createState() => _CustomTextFieldEmailState();
}

class _CustomTextFieldEmailState extends State<CustomTextFieldEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color.fromARGB(255, 241, 239, 239),
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        filled: true,
        fillColor: const Color.fromRGBO(255, 255, 255, 1),
        hintStyle: const TextStyle(
          color: ColorConstant.greyColor,
        ),
        labelStyle: const TextStyle(
          color: ColorConstant.greyColor,
          backgroundColor: ColorConstant.whiteColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }
}


class CustomTextFieldPassword extends StatefulWidget {
  final String hintText;
  final String labelText;

  const CustomTextFieldPassword(
      {Key? key, required this.hintText, required this.labelText})
      : super(key: key);

  @override
  _CustomTextFieldPasswordState createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color.fromARGB(255, 241, 239, 239),
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        filled: true,
        fillColor: const Color.fromRGBO(255, 255, 255, 1),
        hintStyle: const TextStyle(
          color: ColorConstant.greyColor,
        ),
        labelStyle: const TextStyle(
          color: ColorConstant.greyColor,
          backgroundColor: ColorConstant.whiteColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }
}
