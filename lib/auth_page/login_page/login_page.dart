import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  String? _selectedLanguage = 'العربية';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(100),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: DropdownButton<String>(
                          dropdownColor: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          underline: SizedBox(),
                          value: _selectedLanguage,
                          items:
                              <String>[
                                'العربية',
                                'English',
                                'الكردية',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedLanguage = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    Spacer(), // Fixes Expanded-Spacer conflict
                    Image.asset('assets/images/logotext.png', scale: 1.8),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'مرحباً بك !',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'قم بإدخال بيانات تسجيل الدخول للوصول إلى حسابك',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 145,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IntlPhoneField(textAlignVertical: TextAlignVertical.center,
                                disableLengthCheck: false,
                                style: TextStyle(fontSize: 14),
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Image.asset(
                                    'assets/icons/Phone.png',
                                    scale: 2,
                                  ),
                                ),
                                initialCountryCode: 'IQ',
                                onChanged: (phone) {},
                              ),
                              const Divider(height: 5),
                              TextFormField(
                                obscureText: !showPassword,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Image.asset(
                                    'assets/icons/Pass.png',
                                    scale: 2,
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    icon: Icon(
                                      showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                  hintText: 'كلمة المرور',
                                  hintTextDirection: TextDirection.rtl,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "هل نسيت كلمة المرور؟",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.5,
                              fontFamily: "Cairo",
                              color: Color(0xff80166f),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: Color(0xff000000),
                            ),
                            child: Text(
                              "تسجيل الدخول",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Cairo",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,

                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "تسجيل بايومتري",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Cairo",
                                    fontSize: 18, // Increased for consistency
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Image.asset('assets/icons/bio.png', scale: 1.5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed('/SigninPage');
                      },
                      child: Text('انشاء حساب'),
                    ),
                    Text('ليس لديك حساب؟'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
