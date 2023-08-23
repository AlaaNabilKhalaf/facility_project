import 'package:facility/constants.dart';
import 'package:flutter/material.dart';

Widget defaultText({
  TextEditingController? controller ,
  required TextInputType type,
  Function(String)? onChange,
void Function()?  onTab,
  FormFieldValidator? validate,
  String? hint ,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  bool? enable,
  int? lines,
  String? prefixImageAsset,
  double?borderWidth,
  int?maxLines,
}) => TextFormField(
  minLines: maxLines,
  enabled: enable,
  controller: controller,
  obscureText: isObscure,
  decoration:  InputDecoration(
    hintText: hint,
    prefixIcon: prefixImageAsset != null // Use prefixImageAsset to conditionally show the image
        ? Image.asset(
      prefixImageAsset,
      width: 24, // Set the width of the image as per your requirement
      height: 24, // Set the height of the image as per your requirement
    )
        : null,
    suffixIcon: suffix!=null ? IconButton(
      onPressed: pressed,
      icon: Icon(
        suffix,color: Colors.black,
      ),
    )
        : null,
    border:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: borderWidth!,
            color: LIGHT_GREY
      )
    ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: BorderSide(
          width: borderWidth,
          
        )
      )
  ),
  keyboardType: type,
  onChanged: onChange,
  onTap: onTab,
  validator: validate,
  maxLines: lines ,
);