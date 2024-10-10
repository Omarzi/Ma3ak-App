import 'package:ma3ak_app/utils/constants/exports.dart';

/// Custom Widget for the Mode tile with Switch
class SettingTileWithSwitch extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool switchValue;
  final ValueChanged<bool> onChanged;

  const SettingTileWithSwitch({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.switchValue,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 30.sp),

        SizedBox(width: 16.w),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const Spacer(),
        Switch(
          value: switchValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}