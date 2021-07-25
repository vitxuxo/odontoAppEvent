import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginInputText extends StatefulWidget {
  const LoginInputText({
    Key? key,
    this.placeholder,
    this.size,
    this.autofillHints,
    this.controller,
    this.label,
    this.textAlign,
    this.obscure = false,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.onSaved,
  }) : super(key: key);

  final Iterable<String>? autofillHints;
  final String? placeholder;
  final int? size;
  final TextEditingController? controller;
  final String? label;
  final TextAlign? textAlign;
  final bool obscure;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final FormFieldSetter<String>? onSaved;

  @override
  _LoginInputTextState createState() => _LoginInputTextState();
}

class _LoginInputTextState extends State<LoginInputText> {
  FocusNode _focusNode = FocusNode();
  String? _hintText;
  late bool _obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 17.w, top: 6.h, bottom: 6.h),
          width: 337.w,
          height: 50.h,
          child: TextFormField(
            onSaved: widget.onSaved,
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            obscureText: _obscureText,
            obscuringCharacter: '*',
            focusNode: _focusNode,
            autofillHints: widget.autofillHints,
            textAlign: widget.textAlign!,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixStyle: TextStyle(fontSize: 15.sp),
              hintText: _hintText,
              labelText: widget.label,
            ),
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    if (widget.placeholder != null) {
      _hintText = widget.placeholder;
      _focusNode.addListener(() {
        setState(() {
          _hintText = _focusNode.hasFocus ? null : widget.placeholder;
        });
      });
    }
    _obscureText = widget.obscure;
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
