import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/received_meaasge_ui.dart';
import '../Common/send_message_ui.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 64.h,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        color: Colors.purple,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 40.h,
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Please enter message',
                  enabled: true,
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                  isDense: true,
                  prefixIconConstraints:
                  BoxConstraints(minHeight: 12.h, minWidth: 10.w),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      borderSide:  const BorderSide(color: Color(0xffC28ACCFF), width: 1)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide: const BorderSide(color: Color(0xffC28ACCFF), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide: const BorderSide(color: Color(0xffC28ACCFF), width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide: const BorderSide(color: Color(0xffC28ACCFF), width: 1),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    borderSide: const BorderSide(color: Color(0xffC28ACCFF), width: 1),
                  ),
                ),
              ),
            ),
            SvgPicture.asset('assets/send icon.svg',colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),)
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom : 100),
          child : Column(
            children: [
              Stack(alignment: Alignment.centerRight,
                children: [
                  Container(
                    color: Colors.purple,
                    height: 65.h,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20,right: 10),child: InkWell(
                            onTap: ()async{
                              Get.back();
                            },
                            child: const Icon(Icons.arrow_back_ios,color: Colors.white))),
                        const Text('Chatting with Lorem Ipsum',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),),

                      ],
                    ),
                  ),
                ],
              ),

              Container(
                child: Column(
                  // shrinkWrap: true,
                  children: const [
                    CustomSendMessageUI(sendMsgTxt: 'Do you want to book a table?'),
                    CustomReceivedMessageUI(receivedMsgTxt: 'Yes'),
                    CustomSendMessageUI(sendMsgTxt: 'Our continental cusine offer you the best food.'),
                    CustomReceivedMessageUI(receivedMsgTxt: 'Nice'),
                    CustomSendMessageUI(sendMsgTxt: 'Do you want to see our menu?'),
                    CustomReceivedMessageUI(receivedMsgTxt: 'I already checked'),
                    CustomSendMessageUI(sendMsgTxt: 'Okay. Shall we continue with the table reservation?'),
                    CustomReceivedMessageUI(receivedMsgTxt: 'Yes'),
                    CustomSendMessageUI(sendMsgTxt: 'We are open 11:00 am to 10:00 pm from Mon to Sun.'),
                    CustomReceivedMessageUI(receivedMsgTxt: 'That’s good'),
                    CustomSendMessageUI(sendMsgTxt: 'What time would you like to come?'),
                  ],
                ),
              ),


              /* Row(
                children: [
                  CircleAvatar(radius: 20.r,backgroundImage: const NetworkImage('https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg')),
                  paddingAll(0.0, 0.0, 10.w, 0.0, customTextWithPoppinsTextStyle('John Doe', 12.sp, hintTextColor.withOpacity(0.5), FontWeight.w500))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),topRight: Radius.circular(10.r),bottomRight: Radius.circular(10.r))
                ),
                child: paddingAll(5.h, 5.h, 5.w, 5.w, customTextWithPoppinsTextStyle('Lorem ipsum dolor sit amet consectetur.', 12.sp, hintTextColor.withOpacity(0.5), FontWeight.w500)),
              ),
              SizedBox(height: 10.h),
              Container(
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),topRight: Radius.circular(10.r),bottomRight: Radius.circular(10.r))
                ),
                child: paddingAll(5.h, 5.h, 5.w, 5.w, customTextWithPoppinsTextStyle('Lorem ipsum dolor sit amet consectetur.\nAt bibendum lorem rutrum facilisis\nenim elementum et. ', 12.sp, hintTextColor.withOpacity(0.5), FontWeight.w500)),
              ),*/
            ],
          )),
        ),
      ),
    );
  }
}
