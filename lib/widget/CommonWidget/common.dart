import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_interview/Constants/colors.dart';
import 'package:task_interview/Constants/paths.dart';
import 'package:task_interview/Constants/utils.dart';

Widget cachedImage({required String imgUrl}){
  return CachedNetworkImage(
    imageUrl: imgUrl,
    imageBuilder: (context, imageProvider) => Image.network(imgUrl,height: 100,),
    placeholder: (context, url) => CircularProgressIndicator(),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}

StatefulWidget buildFormField({
  required String hint,
  required TextEditingController controller,
  bool isPassword = false,
  bool showPassword = false,
}){
  return StatefulBuilder(builder: (context,state){
    return Container(
      height: 60.0,
      child: TextFormField(
        textAlign:TextAlign.start,
        obscureText: isPassword?showPassword?true:false : false ,
        textAlignVertical:TextAlignVertical.bottom,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: ColorConstant.mediumSwitch),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: ColorConstant.mediumSwitch),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText:  hint,
            hintStyle: TextStyle( color: ColorConstant.hintColor),
            alignLabelWithHint: false,
            suffixIcon: isPassword ?IconButton(
              icon: Icon(showPassword?Icons.visibility:Icons.visibility_off),
              onPressed: () {
                state((){});
                showPassword = !showPassword;
              },
            ) :null
        ),
      ),
    );
  });
}

Widget socialLoginField(){
  return Column(
    children: [
      Container(
        height: 50.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Divider(height: 3,
              color: ColorConstant.mediumSwitch,
              thickness: 3,),
            Container(
                color: ColorConstant.backgroundColor,
                padding: const EdgeInsets.all(15.0),
                child: Text('أو سجل عبر دخول')),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){}, icon: Image.asset(PathIcons.facebook_icon)),
          IconButton(onPressed: (){}, icon: Image.asset(PathIcons.gmail_icon)),
        ],
      )
    ],
  );
}


Widget nextButton({
  required BuildContext context,
  required String buttonTitle,
  Color titleColor =  ColorConstant.greenSplash,
  required VoidCallback onPress,
  Color buttonColor = ColorConstant.mediumSwitch,
  Color borderColor = ColorConstant.mediumSwitch,
  double titleSize = 18.0,
  FontWeight fontWeight = FontWeight.w400

}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color:buttonColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
            color: borderColor,
            width: 2.0
        )
    ),
    child: MaterialButton(
      child: Text(buttonTitle,style: style(context)!.headline6!.copyWith(
          color: titleColor,
          fontSize: titleSize,
          fontWeight:fontWeight
      ),
      ),
      onPressed: onPress,
    ),
  );
}