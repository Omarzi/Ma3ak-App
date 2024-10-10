import 'package:ma3ak_app/utils/constants/exports.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color bgColor;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.bgColor,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black54,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}


