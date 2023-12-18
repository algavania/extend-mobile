import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:testing/ui/widgets/custom_text_field.dart';
import 'package:testing/ui/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo_himit.png',
                      width: 36,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Text(
                        'MIS Dynamic',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 24,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Text(
                  'Login untuk seru-seruan!',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text('Login untuk akses penuh ke Dynamic!',
                    style: TextStyle(color: Styles.grey)),
                const SizedBox(
                  height: 24,
                ),
                const CustomTextField(
                    hint: 'Masukkan email',
                    label: 'Email',
                    prefixIcon: Iconsax.sms),
                const SizedBox(
                  height: 12,
                ),
                const CustomTextField(
                    hint: 'Masukkan password',
                    isPassword: true,
                    label: 'Password',
                    prefixIcon: Iconsax.key),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Lupa password?',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Theme.of(context).primaryColor)),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Login')),
                const Spacer(),
                Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Belum punya akun?',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                          children: [
                            TextSpan(
                                text: ' Register',
                                style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black))
                          ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
