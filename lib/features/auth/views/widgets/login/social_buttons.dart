import 'package:ma3ak_app/utils/constants/exports.dart';

class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({
    super.key,
    required this.onGmailTapped,
    required this.onFacebookTapped,
  });

  final void Function()? onGmailTapped, onFacebookTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onFacebookTapped,
          child: Image.asset(AppImages.facebookIcon, height: 50.h),
        ),
        SizedBox(width: 8.w),
        GestureDetector(
          onTap: onGmailTapped,
          child: Image.asset(AppImages.gmailIcon, height: 58.h),
        ),
      ],
    );
  }
}
