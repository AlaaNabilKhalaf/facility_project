import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  final String text;
  const Search({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 60,
        // width: MediaQuery.of(context).size.width *.7,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.elliptical(6, 6)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100]!, // Set the shadow color
              spreadRadius: 10, // Set the spread radius of the shadow
              blurRadius: 10, // Set the blur radius of the shadow
              offset: const Offset(0, 3), // Set the offset of the shadow
            ),
          ],
        ),
        child: TextField(
              decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(.2),
                // width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: text,
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Opacity(
                  opacity: .4,
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 22,
                  ),
                ),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
    );
  }
}
// Container(
//
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(12),
// boxShadow: [
// BoxShadow(
// color: Colors.white.withOpacity(.1),
// spreadRadius: 2,
// blurRadius: 7,
// offset: Offset(0, 3), // moves the shadow down
// ),
// ],
// ),
// child: TextField(
// decoration: InputDecoration(
// enabledBorder:
// OutlineInputBorder(
// borderSide: const BorderSide(
// color: Colors.white,
//
// ),
// borderRadius: BorderRadius.circular(12),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide:  BorderSide(
// color: Colors.white.withOpacity(.2) ,
// // width: 2,
// ),
// borderRadius: BorderRadius.circular(12),
// ),
// hintText: 'Search for service, offer',
// prefixIcon: IconButton(
// onPressed: (){},
// icon: const Opacity(
// opacity: .8,
// child: Icon(
// FontAwesomeIcons.magnifyingGlass,
// size: 22,
// ),
// ),
// ),
// border: InputBorder.none,
// ),
// ),
// ),