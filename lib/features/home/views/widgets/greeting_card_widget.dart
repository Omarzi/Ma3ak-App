import 'package:ma3ak_app/utils/constants/exports.dart';

class GreetingCardWidget extends StatelessWidget {
  final String userName;
  final String location;

  const GreetingCardWidget({
    super.key,
    required this.userName,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello, ',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '$userName !',
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(
                            0xFFFFC107), // Custom color for the name
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              // Spacing between the greeting and location
              // Location row
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 18.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Profile picture on the right
          CircleAvatar(
            radius: 34.r,
            backgroundImage: const AssetImage(AppImages.profileImage),
          ),
        ],
      ),
    );
  }
}
