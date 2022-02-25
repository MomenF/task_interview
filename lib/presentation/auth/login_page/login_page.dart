import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_interview/Constants/Routes.dart';
import 'package:task_interview/Constants/colors.dart';
import 'package:task_interview/Constants/paths.dart';
import 'package:task_interview/Constants/utils.dart';
import 'package:task_interview/widget/CommonWidget/common.dart';

class LoginPageContent extends StatefulWidget {
  const LoginPageContent({Key? key}) : super(key: key);

  @override
  _LoginPageContentState createState() => _LoginPageContentState();
}

class _LoginPageContentState extends State<LoginPageContent> {
  //Todo variables
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = 'البريد الإليكتروني' ;
  String password = 'كلمة المرور' ;
  String remember = 'هل نسيت كلمة المرور';
  String signIn =  'تسجيل الدخول';
  @override
  Widget build(BuildContext context) {


    return Container(
      padding: const EdgeInsets.all(10.0) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildFormField(
              hint: email ,
              controller: emailController,
          ),
          SizedBox(height: 15.0,),
          buildFormField(hint: password ,
              controller: passwordController,isPassword: true,showPassword: false),
          TextButton(onPressed: (){}, child: Text(remember,style: style(context)!.headline6,)),
          nextButton(buttonTitle: signIn ,onPress: (){
            Navigator.pushNamedAndRemoveUntil(context, Routes.home_page, (route) => false);
          }, context: context),
          socialLoginField(),

        ],
      ),
    );
  }
}
