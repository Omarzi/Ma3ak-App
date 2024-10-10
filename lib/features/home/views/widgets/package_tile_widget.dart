import 'package:ma3ak_app/features/home/models/package.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class PackageTileWidget extends StatelessWidget {
  final Package package;

  const PackageTileWidget({super.key, required this.package});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getScreenWidth(context) / 1.9,
      margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Package image
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.network(
              package.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.h),
          // Package title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              package.title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          // Rating and reviews
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 16.sp),
                SizedBox(width: 4.w),
                Text(
                  '${package.rating} (${package.reviews ~/ 1000}K)', // e.g., "5.0 (770K)"
                  style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                ),
                SizedBox(width: 10.w),
                Icon(Icons.location_on, size: 18.sp, color: Colors.grey),
                SizedBox(width: 4.w),
                Text(
                  '${package.distance} KM',
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
