import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/utiles/app_colors.dart';

class CustomeTextFiled extends StatelessWidget {
  final String hint;

  final Icon? prefixicon;
  final Icon? subfixicon;
  final TextEditingController controller;
   double? fontSize;
   double? left=0;
   double? right=0;
   double? top=0;
   double? bottom=0;
  final Color? fontColor;
   String? fontFamily;
   int? maxline;
   bool? enabled;
  TextInputType? type=TextInputType.text;
   EdgeInsetsGeometry? edges =EdgeInsets.all(5) ;

  CustomeTextFiled(
      {
      this.prefixicon,
      this.subfixicon,
        this.maxline,
        this.type,
      required this.hint,
      required this.controller,
        this.fontSize,
        this.fontColor,
        this.fontFamily,
        this.left,
        this.right,
        this.top,
        this.enabled,
        this.bottom,
        this.edges,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: top??0, left: left??0, right:right??0,bottom: bottom??0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        enabled:enabled??true,
        keyboardType: type,
        maxLines: maxline??1,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: edges??EdgeInsets.all(5),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

              borderSide:
                  const BorderSide(color: AppColors.bottonBackGround, width: 10)),
          labelText: hint,
          labelStyle: TextStyle(fontFamily: fontFamily??"f400", fontSize:fontSize??16),
          prefixIcon: prefixicon,
          suffixIcon: subfixicon,
        ),
      ),
    );
  }
}

class CustomePasswordFiled extends StatefulWidget {
  final String hint;
    bool isObscure;
  final Icon? prefixicon;
  final TextEditingController controller;
   double? fontSize;
   double? left;
   double? right;
   double? top;
   double? bottom;
  final Color? fontColor;
   String? fontFamily;
   int? maxline;
  TextInputType? type=TextInputType.text;
   EdgeInsetsGeometry? edges  ;

  CustomePasswordFiled(
      {
       required this.isObscure,
      this.prefixicon,
        this.maxline,
        this.type,
      required this.hint,
      required this.controller,
        this.fontSize,
        this.fontColor,
        this.fontFamily,
        this.left,
        this.right,
        this.top,
        this.bottom,
        this.edges,
      });

  @override
  _CustomePasswordFiled createState() => _CustomePasswordFiled();
}

class _CustomePasswordFiled extends State<CustomePasswordFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: widget.top??0, left: widget.left??0, right:widget.right??0,bottom: widget.bottom??0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        keyboardType: widget.type,
        maxLines: widget.maxline??1,

        obscureText: widget.isObscure,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: widget.edges??EdgeInsets.all(5),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),

              borderSide:
                  const BorderSide(color: AppColors.bottonBackGround, width: 10)),
          labelText: widget.hint,
          labelStyle: TextStyle(fontFamily: widget.fontFamily??"f400", fontSize:widget.fontSize??16),
          prefixIcon: widget.prefixicon,
            suffixIcon: IconButton(
                icon: Icon( widget.isObscure!
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    widget.isObscure = ! widget.isObscure!;
                  });
                })
        ),
      ),
    );
  }
}



class CodeTextFiled extends StatelessWidget {
  const CodeTextFiled({
    Key? key, this.onChangedLastFiled,
    this.controlTextfield,


  }) : super(key: key);
  final Function(String)? onChangedLastFiled;
  final TextEditingController? controlTextfield;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 64,

        child: TextFormField( decoration: InputDecoration(

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),

              borderSide:
              const BorderSide(color: AppColors.bottonBackGround, width: 10))),
          controller:controlTextfield ,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          onChanged: onChangedLastFiled ?? (value) {
            if (value.length == 1) {
              FocusScope.of(context).previousFocus();
            }
          },
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1),
          ],
        ),

    );
  }
}

