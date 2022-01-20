import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Utils/colors.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Container(), flex: 1),
          //svg image
          SvgPicture.asset(
            'assets/ic_instagram.svg',
            color: primaryColor,
            height: 64,
          ),
          const SizedBox(
            height: 64,
          ),
          //input for email
          TextFieldInput(
              textEditingController: _emailController,
              hintText: "Insira seu Email",
              textInputType: TextInputType.emailAddress),
          const SizedBox(height: 24),
          //input for password
          TextFieldInput(
            textEditingController: _passwordController,
            hintText: "Insira sua senha",
            textInputType: TextInputType.text,
            isPass: true,
          ),
          const SizedBox(height: 24),
          //button login
          InkWell(
            child: Container(
              child: Text("Login"),
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)
                      ),
                ),
                color: blueColor
              ),
            ),
          ),
          const SizedBox(height: 12,),
          Flexible(child: Container(), flex: 2),
          //transitioning to singup
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("ainda não possui conta?"),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  child: const Text("Cadastre-se",style: TextStyle(fontWeight: FontWeight.bold),),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
              )
            ],
          )
        ],
      ),
    )));
  }
}
