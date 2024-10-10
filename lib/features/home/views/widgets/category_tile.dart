import 'package:ma3ak_app/features/home/models/category.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class CategoryTile extends StatelessWidget {
  final CategoryModel category;
  final void Function()? onTap;

  const CategoryTile({super.key, required this.category, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(16.r), // Rounded corners
            ),
            child: Icon(
              category.icon,
              size: 40.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            category.name,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
