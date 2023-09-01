
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/check_button.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/assets.dart';
import '../../../../../core/utilies/styles.dart';

class PayCard extends StatefulWidget {
  const PayCard({super.key});

  @override
  State<PayCard> createState() => _PayCardState();
}

class _PayCardState extends State<PayCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
                'Add new card',
              style: Styles.textStyle15.copyWith(fontSize: 18 , color: Colors.black),
            ),
          ),
          Text(
            'Card Number',
            style: Styles.textStyle22.copyWith(fontSize: 12),
          ),
          const SizedBox(height: 8,),
          defaultText(
              type: TextInputType.text,
            prefixImageAsset: AssetData.penIcon,
          ),
          const SizedBox(height: 8,),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expire date',
                      style: Styles.textStyle22.copyWith(fontSize: 12),
                    ),
                    const SizedBox(height: 5,),
                    defaultText(
                      type: TextInputType.text,
                      prefixImageAsset: AssetData.penIcon,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: Styles.textStyle22.copyWith(fontSize: 12),
                    ),
                    const SizedBox(height: 5,),
                    defaultText(
                      type: TextInputType.text,
                      prefixImageAsset: AssetData.penIcon,
                      hint: 'CVV',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Text(
              'Cardholder name',
            style: Styles.textStyle22.copyWith(fontSize: 12),
          ),
          const SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
            prefixImageAsset: AssetData.penIcon,
            // suffix: AssetData.personIcon,
          ),
          const SizedBox(height: 14,),
          const CheckButtom(
            text: 'Save card for future payment',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 14,
          ),

        // const SizedBox(height: 50,),
          CustomButton(
            width: double.infinity,
              backgroundColor: kPrimaryColor,
              text: 'Confirm',
              func: (){}
          ),
        ],
      ),
    );
  }
}
