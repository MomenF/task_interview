import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_interview/Constants/colors.dart';
import 'package:task_interview/Constants/utils.dart';
import 'package:task_interview/presentation/auth/register_page/register_page.dart';
import 'login_page/login_page.dart';


class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool isRegister = true;
  String signIn = 'تسجيل الدخول';
  String register = 'تسجيل حساب';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child:
      Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (isRegister == false) {
                      setState(() {
                        isRegister = true;
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      color: isRegister
                          ? ColorConstant.mediumSwitch
                          : ColorConstant.lightSwitch,
                    ),

                    child: Center(child: Text(signIn,style: style(context)!.headline6)),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (isRegister) {
                      setState(() {
                        isRegister = false;
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft:  Radius.circular(15.0),
                          topLeft: Radius.circular(15.0)),
                      color: isRegister
                          ? ColorConstant.lightSwitch
                          : ColorConstant.mediumSwitch,
                    ),

                    child:
                    Center(
                        child: Text(register,style: style(context)!.headline6,),),
                  ),
                ),
              ),
            ],
          ),
          isRegister?
          LoginPageContent() :
          RegisterContentPage()
        ],
      ),
    );
  }
}
