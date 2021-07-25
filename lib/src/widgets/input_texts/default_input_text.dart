import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DefaultInputText extends StatefulWidget {
  const DefaultInputText({
    Key? key,
    this.placeholder,
    this.autofillHints,
    this.controller,
    this.label,
    this.textAlign = TextAlign.start,
    this.obscure = false,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.onChanged,
  }) : super(key: key);

  final Iterable<String>? autofillHints;
  final String? placeholder;
  final TextEditingController? controller;
  final String? label;
  final TextAlign textAlign;
  final bool obscure;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final FormFieldSetter<String>? onChanged;

  @override
  _DefaultInputTextState createState() => _DefaultInputTextState();
}

class _DefaultInputTextState extends State<DefaultInputText> {
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
          child: TextFormField(
            onChanged: widget.onChanged,
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            obscureText: _obscureText,
            obscuringCharacter: '*',
            focusNode: _focusNode,
            autofillHints: widget.autofillHints,
            textAlign: widget.textAlign,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: widget.inputFormatters,
            decoration: InputDecoration(
              border: InputBorder.none,
              alignLabelWithHint: true,
              hintText: _hintText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: widget.label,
              isDense: true,
              suffixIcon: widget.obscure ? _showPassword() : null,
              errorMaxLines: 3,
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

  Widget _showPassword() {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: Icon(Icons.remove_red_eye),
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
