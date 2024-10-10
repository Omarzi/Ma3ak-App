import 'package:ma3ak_app/utils/constants/exports.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget({super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        decoration: BoxDecoration(
          color: HexColor('1c2120'),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
          ),
        ),
      ),
    );
  }
}
