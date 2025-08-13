import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';
import 'package:store_app/core/utils/app_assets.dart';
import 'package:store_app/core/utils/app_navigation.dart';
import 'package:store_app/core/utils/constants.dart';
import 'package:store_app/features/auth/presentation/view/screens/sign_up_screen.dart';
import '../../../../../app.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../base/helpers/base_view.dart';
import '../../../../base/helpers/secure_storge_helper.dart';
import '../../../../base/presentation/view/widgets/default_Button.dart';
import '../../../domain/entities/customer.dart';
import '../../controller/auth_controller.dart';
import '../widgets/default_text_field.dart';

class SignInScreen extends ConsumerWidget with BaseView {
  SignInScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authController=ref.read(authControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text("Sign in")),
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
                        ),
                        SizedBox(height: 20.h),
                        DefaultTextField(
                          label: 'password',
                          hint: 'Enter Your Password.',
                          prefixIcon: Icons.lock_outline,
                          keyboardType: TextInputType.emailAddress,
                          controller: passwordController,
                          obscureText: true,
                        ),
                        TextButton(
                          onPressed: () {
                            AppNavigation.navigationTo(context, SignUpScreen());
                          },
                          child: Text(
                            "Do`nt have an account,create one?",
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
                  text: "Sign in",
                  onTap: () async {
                    final email = emailController.text;
                    final password = passwordController.text;
                      printUserDataForTest();
                    if (_formKey.currentState!.validate()) {
                      final result =
                          await ref
                              .read(authControllerProvider.notifier)
                              .getCustomers();

                      switch (result) {
                        case Success(:final data):
                          final matchedCustomer = data
                              .where((customer) =>
                          customer.email == email &&
                              customer.password == password)
                              .cast<Customer?>()
                              .firstOrNull;


                          if (matchedCustomer != null) {
                            authController.saveUserData(email: email, password: password, matchedCustomer: matchedCustomer);
                            AppNavigation.navigationTo(context, const App());
                          } else {
                            showToastMessage(
                              message: "Email or password may be wrong",
                              context: context,
                            );
                          }
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
void printUserDataForTest()async{
  final email = await SecureStorageHelper.getEmail();
  final password = await SecureStorageHelper.getPassword();
  final favoriteId= await SecureStorageHelper.getDraftOrderId(key: Constants.favDraftOrderId);
  final cartId= await SecureStorageHelper.getDraftOrderId(key: Constants.cartDraftOrderId);
  print("user data: $email :: $password favorite::$favoriteId cart::$cartId");
}
}
