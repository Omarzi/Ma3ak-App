import 'package:ma3ak_app/utils/constants/exports.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('1c2120'),
      appBar: AppBar(
        backgroundColor: HexColor('1c2120'),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_outlined, color: Colors.white),
        ),
      ),
      body: Form(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.r),
            ),
          ),
          height: DeviceUtils.getScreenHeight(context),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40.h),
                const TopBarInRegisterWidget(),
                SizedBox(height: 36.h),
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
                        bgColor: HexColor('d4d4d4'),
                        hintText: 'Jiara Martins',
                        controller: nameController,
                      ),

                      SizedBox(height: 25.h),

                      /// Email Text
                      Text(
                        'EMAIL',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      /// Email Field
                      CustomTextField(
                        bgColor: HexColor('d4d4d4'),
                        hintText: 'hello@gmail.com',
                        controller: emailController,
                      ),

                      SizedBox(height: 25.h),

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
                        bgColor: HexColor('d4d4d4'),
                        hintText: '******',
                        controller: passwordController,
                      ),

                      SizedBox(height: 25.h),

                      /// Phone Text
                      Text(
                        'PHONE NUMBER',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      /// Phone Field
                      CustomTextFieldWithPrefix(
                        controller: phoneController,
                      ),

                      SizedBox(height: 25.h),

                      /// Sing in Button
                      MainButtonWidget(
                        buttonName: 'Sign up',
                        onTap: () {},
                      ),

                      SizedBox(height: 25.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
