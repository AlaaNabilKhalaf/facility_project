import 'dart:io';

import 'package:facility/features/tasareeh/presentation/views/widgets/saveRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';
import '../../../../setting/presentation/views/widgets/NextActivate.dart';


File? imageFile;


class CustomerListView extends StatefulWidget {
  const CustomerListView({Key? key}) : super(key: key);

  @override
  State<CustomerListView> createState() => _CustomerListViewState();
}
bool isClicked=false;

List<String> customers=[
  'Customer 1',
  'Customer 2',
  'Customer 3'
];
class _CustomerListViewState extends State<CustomerListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index){
          return isClicked==false?
          Container(
            padding: EdgeInsets.all(10),
            height: 70,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(customers[index]),
                IconButton(onPressed: (){
                  setState(() {
                    isClicked=true;
                  });
                }, icon: Icon(Icons.keyboard_arrow_down))
              ],
            ),
          ):
          Container(
              padding: EdgeInsets.all(10),
              height:200.h,
              color: LIGHT_GREY.withOpacity(.1),
              child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(customers[index],style: Styles.textStyle20.copyWith(color: kPrimaryColor),),
                        IconButton(onPressed: (){
                          setState(() {
                            isClicked=false;
                          });
                        }, icon: Icon(Icons.keyboard_arrow_up)
                        )
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    const Text("Customer Name"),
                    SizedBox(height: 5.h,),
                    defaultText(type: TextInputType.text,borderWidth: .3),
                    SizedBox(height: 20.h,),
                    const Text("Customer ID"),
                    SizedBox(height: 5.h,),
                    defaultText(type: TextInputType.text,borderWidth: .3),
                    imageFile!=null?Container(height: 150.h,width: double.infinity,decoration:
                    BoxDecoration(image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: FileImage(File(imageFile!.path)) )),)
                        : SizedBox(height: 20.h,),
                    defaultText(
                        type: TextInputType.text,
                        borderWidth: 1,
                        hint: "Upload your Id",
                        suffix: Icons.upload_rounded,
                        pressed: (){
                          getImage();
                        }

                    ),
                    SizedBox(height: 5.h,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Reason of visit'),
                    ),
                    defaultText(type: TextInputType.text,borderWidth: .3,maxLines: 5),
                    SaveAndCancelRow()


                  ]
              )
          );
        },
        separatorBuilder: (context,index){
          return SizedBox(height: 10,);
        },
        itemCount:3);
  }


  void getImage()async{
    final selectedImage= await ImagePicker().pickImage(source: ImageSource.gallery);
    if(selectedImage!=null){
      setState(() {
        imageFile=File(selectedImage.path);
      });
    }
  }


}