import 'package:ma3ak_app/utils/constants/exports.dart';

class AppleAuthButtonWidget extends StatelessWidget {
  const AppleAuthButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: DeviceUtils.getScreenWidth(context) / 10,
          ),
          decoration: BoxDecoration(
            color: HexColor('333333'),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.appleIcon, height: 40.h, color: Colors.white),
                SizedBox(width: 10.w),
                Text(
                  'Sing in',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
