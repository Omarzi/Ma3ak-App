import 'package:ma3ak_app/utils/constants/exports.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key, required this.onForgetPasswordTap, required this.signupTap});

  final void Function() onForgetPasswordTap, signupTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: onForgetPasswordTap,
            child: Text(
              'Forget Password?',
              style: TextStyle(
                color: HexColor('27291f'),
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          GestureDetector(
            onTap: signupTap,
            child: Text(
              'Signup',
              style: TextStyle(
                color: HexColor('1c2120'),
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
