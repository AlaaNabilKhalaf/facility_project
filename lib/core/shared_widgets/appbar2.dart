import 'package:flutter/material.dart';
import '../../constants.dart';
import '../utilies/styles.dart';

class AppBarButton2 extends StatefulWidget  implements PreferredSizeWidget {

  final String text;
  Widget? columnText;
   AppBarButton2({super.key, required this.text,this.columnText});

  @override
  State<AppBarButton2> createState() => _AppBarButton2State();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarButton2State extends State<AppBarButton2> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Colors.white,
                      weight: 100.0,
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context
                      ); // Replace with the desired navigation action
                    },
                  ),
                ),
              ),
            ),
            widget.columnText==null? Text(
              widget.text,
              style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black),
            ) : widget.columnText!,
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 45,
                  height: 90,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Set the shadow color
                        spreadRadius: 2, // Set the spread radius of the shadow
                        blurRadius: 6, // Set the blur radius of the shadow
                        offset: const Offset(0, 3), // Set the offset of the shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                      'assets/images/noticon.png',
                    fit: BoxFit.scaleDown,
                  ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}