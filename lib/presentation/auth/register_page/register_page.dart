import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_interview/Constants/Routes.dart';
import 'package:task_interview/Constants/utils.dart';
import 'package:task_interview/widget/CommonWidget/common.dart';

class RegisterContentPage extends StatefulWidget {
  const RegisterContentPage({Key? key}) : super(key: key);

  @override
  _RegisterContentPageState createState() => _RegisterContentPageState();
}

class _RegisterContentPageState extends State<RegisterContentPage> {
  //Todo Variables
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String email = 'البريد الإليكتروني' ;
  String password = 'كلمة المرور' ;
  String confirmPassword = 'تأكيد كلمة المرور' ;
  String remember = 'هل نسيت كلمة المرور';
  String Register =  'إنشاء حساب';


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0) ,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildFormField(
              hint: email ,
              controller: emailController,
            ),
            SizedBox(height: 5.0,),
            buildFormField(hint: password , controller: passwordController,isPassword: true,showPassword: false),
            buildFormField(hint: confirmPassword , controller: confirmPasswordController,isPassword: true,showPassword: false),
            TextButton(onPressed: (){}, child: Text(remember,style: style(context)!.headline6,)),
            nextButton(buttonTitle: Register ,onPress: (){
              Navigator.pushNamedAndRemoveUntil(context, Routes.home_page, (route) => false);
            }, context: context),
            socialLoginField()
          ],
        ),
      ),
    );
  }
}
