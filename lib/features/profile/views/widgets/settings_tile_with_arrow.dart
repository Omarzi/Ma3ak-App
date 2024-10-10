import 'package:ma3ak_app/utils/constants/exports.dart';

/// Custom Widget for the tiles with arrow (Change Password, Language)
class SettingTileWithArrow extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingTileWithArrow({
    required this.icon,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 30.sp),
          SizedBox(width: 16.w),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, size: 20.sp), // Arrow icon
        ],
      ),
    );
  }
}