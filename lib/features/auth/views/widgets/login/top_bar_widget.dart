import 'package:ma3ak_app/utils/constants/exports.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: DeviceUtils.getScreenHeight(context) / 2.8,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.r),
          topLeft: Radius.circular(30.r),
          bottomLeft: Radius.circular(70.r),
          bottomRight: Radius.circular(70.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 16.h),
          Center(
            child: SizedBox(
              width: DeviceUtils.getScreenWidth(context) / 3,
              height: DeviceUtils.getScreenHeight(context) / 10,
              child: const Placeholder(color: Colors.white),
            ),
          ),

          Column(
            children: [
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 50.sp,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Sign in to continue.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
