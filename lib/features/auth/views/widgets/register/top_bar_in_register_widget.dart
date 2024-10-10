import 'package:ma3ak_app/utils/constants/exports.dart';

class TopBarInRegisterWidget extends StatelessWidget {
  const TopBarInRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: DeviceUtils.getScreenWidth(context) / 2.4,
            child: Text(
              'Create new Account',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10.h),

          GestureDetector(
            onTap: () => context.pop(),
            child: Text(
              'Already Registered? Login here.',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
