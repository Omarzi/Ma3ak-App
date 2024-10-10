import 'package:ma3ak_app/utils/constants/exports.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'For Your All NEEDS!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.sp,
                fontWeight: FontWeight.w900,
              ),
              overflow: TextOverflow.clip,
            ),

            SizedBox(height: 90.h),

            /// Click Button
            GestureDetector(
              onTap: () => context.pushReplacementNamed(RoutesName.loginRoute),
              child: const ClickButtonToJoin(),
            ),
          ],
        ),
      ),
    );
  }
}

