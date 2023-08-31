import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/check_button.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/confirmData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayWay extends StatefulWidget {
  const PayWay({Key? key}) : super(key: key);

  @override
  State<PayWay> createState() => _PayWayState();
}

class _PayWayState extends State<PayWay> {

  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Duration Entry',),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
             const Text("Please select your payment method"),
              SizedBox(height: 10.h,),
              const PaymentMethod(),
              SizedBox(height: 10.h,),
              Container(height: 55.h,color: LIGHT_GREY.withOpacity(.1),
              child:CheckButtom(text: 'Cash payment at management (pending permit)',)
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.all(10),
                height: 130.h,
                color: LIGHT_GREY.withOpacity(.1),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AccountsContainer(txt1: 'Numbers of workers * 3', txt2: "150 EGP",),
                    AccountsContainer(txt1: 'Tax',txt2: '0:00 EGP',),
                    AccountsContainer(txt1: 'Total Amount',txt2: '150 EGP',),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Container(
                alignment: Alignment.center,
                height: 50.h,color: LIGHT_GREY.withOpacity(.1),
                child: Text('There is a security deposit to be refunded when there are no violations',
                  style: Styles.textStyle16.copyWith(color: Colors.red),),),
              SizedBox(height: 10.h,),
              CustomButton(backgroundColor: kPrimaryColor, text: 'Confirm',
                  func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmData()));
                  },
                  width: double.infinity)

            ],
          ),
        ),
      ),
    );
  }
}

class AccountsContainer extends StatelessWidget {
   AccountsContainer({
  required this.txt1,
     required this.txt2
  });
String txt1;
String txt2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(txt1,style: Styles.textStyle16,),
      Text(txt2)
    ],);
  }
}

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 
      350.h,
      color: LIGHT_GREY.withOpacity(.1),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.stop_circle_sharp),
              SizedBox(width: 10,),
              Text("Visa",style: Styles.textStyle16,)
            ],
          ),
SizedBox(height: 10.h,),
          const Text('Visa card'),
          SizedBox(height: 5.h,),
          defaultText(type: TextInputType.text,borderWidth: .2,suffix: Icons.add_card_outlined),
          SizedBox(height: 20.h,),
          SizedBox(
            height: 100.h,
            child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cvv'),
                        SizedBox(height: 5,),
                        defaultText(type: TextInputType.text,borderWidth: .3,hint: 'cvv')
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Text('End Date'),
                    SizedBox(height: 5,),
                    defaultText(type: TextInputType.text,borderWidth: .3, ),
                  ],),
                )
              ],
            ),
          ),
          Text("Name"),
          SizedBox(height: 5.h,),
          defaultText(type: TextInputType.text,borderWidth: .3)
          
        ],
      ),
    );
  }
}
