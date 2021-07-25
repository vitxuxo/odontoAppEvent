import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:odonto_app_event/src/widgets/input_texts/login_input_text.dart';
import 'package:odonto_app_event/src/widgets/input_texts/validator/email_validator.dart';
import 'package:odonto_app_event/src/widgets/input_texts/validator/multi_validator.dart';
import 'package:odonto_app_event/src/widgets/input_texts/validator/required_validator.dart';
import 'package:odonto_app_event/ui/cores.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Form(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 49.h, left: 37.w, right: 37.w),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Cores.branco),
              child: LoginInputText(
                textAlign: TextAlign.left,
                placeholder: "Informe o E-mail",
                autofillHints: [AutofillHints.email],
                keyboardType: TextInputType.emailAddress,
                validator: MultiValidator(
                  [RequiredValidator(), EmailValidator()],
                ),
                onSaved: (value) {},
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h, left: 37.w, right: 37.w),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Cores.branco),
              child: LoginInputText(
                textAlign: TextAlign.left,
                placeholder: "Informe a Senha",
                obscure: true,
                autofillHints: [AutofillHints.password],
                keyboardType: TextInputType.visiblePassword,
                validator: MultiValidator(
                  [
                    RequiredValidator(),
                  ],
                ),
                onSaved: (value) {},
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 22.h, left: 99.w, right: 99.w),
              height: 45.h,
              width: 214.w,
              decoration: BoxDecoration(
                color: Cores.branco,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: isLoading == false
                    ? Text(
                        "Entrar",
                        textAlign: TextAlign.center,
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: 155.w),
                        height: 45.h,
                        width: 45.w,
                        child: CircularProgressIndicator(
                          color: Cores.branco,
                        ),
                      ),
              ),
            ),
            onTap: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
              Fluttertoast.showToast(
                  msg: "Login efetuado",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 10,
                  backgroundColor: Cores.cinzaEscuro,
                  textColor: Cores.preto,
                  fontSize: 16.0);
            },
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 26.h),
              child: Text(
                "Criar Conta",
                textAlign: TextAlign.center,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CriarContaPage()),
              );
            },
          ),
        ],
      )),
    );
  }
}
