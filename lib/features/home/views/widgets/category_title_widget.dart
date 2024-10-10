import 'package:ma3ak_app/utils/constants/exports.dart';

class CategoryOrRecommendedTitleWidget extends StatelessWidget {
  const CategoryOrRecommendedTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),

        const Icon(Icons.more_horiz, color: Colors.grey)
      ],
    );
  }
}
