import 'package:ma3ak_app/utils/constants/exports.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Top Bar
              const TopBarWidget(),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 45.h),
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Name Text
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    /// Name Field
                    CustomTextField(
                      bgColor: Colors.white,
                      hintText: 'Enter your name here..',
                      controller: nameController,
                    ),

                    SizedBox(height: 15.h),

                    /// Password Text
                    Text(
                      'PASSWORD',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    /// Password Field
                    CustomTextField(
                      bgColor: Colors.white,
                      hintText: '******',
                      controller: passwordController,
                    ),

                    SizedBox(height: 10.h),

                    /// Social Buttons
                    SocialButtonsWidget(
                      onFacebookTapped: () {},
                      onGmailTapped: () {},
                    ),

                    SizedBox(height: 10.h),

                    /// Apple Auth
                    const AppleAuthButtonWidget(),

                    SizedBox(height: 10.h),

                    /// Sing in Button
                    MainButtonWidget(
                      buttonName: 'Sign in',
                      onTap: () => context.pushNamedAndRemoveUntil(
                        RoutesName.navigationMenuRoute,
                        predicate: (route) => false,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    /// Sing in Button
                    MainButtonWidget(
                      buttonName: 'Register',
                      onTap: () => context.pushNamed(RoutesName.registerRoute),
                    ),

                    SizedBox(height: 20.h),

                    BottomWidget(
                      signupTap: () {},
                      onForgetPasswordTap: () {},
                    ),
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
