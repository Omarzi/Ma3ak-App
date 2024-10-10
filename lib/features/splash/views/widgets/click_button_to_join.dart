import 'package:ma3ak_app/utils/constants/colors.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class ClickButtonToJoin extends StatelessWidget {
  const ClickButtonToJoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        // color: Colors.yellow.withOpacity(.8),
        borderRadius: BorderRadius.circular(33.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Click To Join',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(width: 18.w),

            Image.asset(AppImages.arrowIcon, fit: BoxFit.cover, height: 50.h),
          ],
        ),
      ),
    );
  }
}
