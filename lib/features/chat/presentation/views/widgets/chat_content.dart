import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';

class ChatContent extends StatelessWidget {
  const ChatContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Name*',
              style: Styles.textStyle22.copyWith(fontSize: 12)
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
          ),
          SizedBox(height: 13,),
          Text(
              'Email*',
              style: Styles.textStyle22.copyWith(fontSize: 12)
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
          ),
          SizedBox(height: 13,),
          Text(
              'Number*',
              style: Styles.textStyle22.copyWith(fontSize: 12)
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
            hint: 'Complaint',
          ),
          SizedBox(height: 13,),
          Text(
            'Your Inquire*',
            style: Styles.textStyle22.copyWith(fontSize: 12),
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
          ),
          SizedBox(height: 13,),
          Text(
            'Inquire details*',
            style: Styles.textStyle22.copyWith(fontSize: 12),
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
            lines: 8,
          ),
          // SizedBox(height: 20,),
          // CustomButton(
          //     width: MediaQuery.of(context).size.width*.7,
          //     backgroundColor: kPrimaryColor,
          //     text: 'Send',
          //     func: (){}
          // ),
        ],
      ),
    );
  }
}
