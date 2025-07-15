import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/app.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';
import 'package:store_app/core/utils/theme/input_validators.dart';
import 'package:store_app/features/auth/presentation/view/screens/sign_in_Screen.dart';
import 'package:store_app/features/base/helpers/base_view.dart';
import 'package:store_app/features/base/presentation/view/widgets/default_Button.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_navigation.dart';
import '../../controller/auth_controller.dart';
import '../widgets/default_text_field.dart';

class SignUpScreen extends ConsumerWidget with BaseView{
  SignUpScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("Sing up")),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16.0.r),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(AppAssets.shoppingImage),
                          radius: 130.r,
                        ).paddingVertical(10.h),
                        DefaultTextField(
                          label: 'Email',
                          hint: 'Enter Your Email.',
                          prefixIcon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: InputValidators.validateEmail,
                        ),
                        SizedBox(height: 20.h),
                        DefaultTextField(
                          label: 'password',
                          hint: 'Enter Your Password.',
                          prefixIcon: Icons.lock_outline,
                          keyboardType: TextInputType.emailAddress,
                          controller: passwordController,
                          validator: InputValidators.validatePassword,
                          obscureText: true,
                        ),
                        TextButton(
                          onPressed: () {
                            AppNavigation.navigationTo(
                              context,
                               SignInScreen(),
                            );
                           FocusManager.instance.primaryFocus?.unfocus();
                          },
                          child: Text(
                            "Already have account, Sign in?",
                            style: context.textTheme.bodyLarge?.copyWith(
                              color: context.colorScheme.secondary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 16.h,
                ),
                child: DefaultButton(
                  text: "Sign Up",
                  onTap: () async {
                    final email = emailController.text;
                    final password = passwordController.text;
                    if (_formKey.currentState!.validate()) {
                      final result = await ref
                          .read(authControllerProvider.notifier)
                          .signUp(email, password);
                      switch (result) {
                        case Success(:final data):
                          AppNavigation.navigationTo(context, const App());
                          break;
                        case Failure(:final message):
                       showToastMessage(message: message, context: context);
                          break;
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
