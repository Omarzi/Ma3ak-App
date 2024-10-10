import 'package:ma3ak_app/features/home/models/product_in_home.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class ProductTileInHomeWidget extends StatelessWidget {
  final ProductInHome product;

  const ProductTileInHomeWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 20.h),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.network(
                product.imageUrl,
                height: 90.h,
                width: 90.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16.w),

            // Product Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  // Product Description
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                  ),
                  SizedBox(height: 8.h),
                  // Add to Cart
                  Row(
                    children: [
                      Icon(Icons.shopping_cart, size: 21.sp),
                      SizedBox(width: 10.w),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Price and Favorites
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Heart Icon
                Icon(
                  Icons.favorite_border,
                  color: product.priceStable ? Colors.grey : Colors.red,
                ),
                SizedBox(height: 14.h),
                // Product Price
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Price Stability
                if (!product.priceStable)
                  Text(
                    'PRICES ARE\nNOT STABLE',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
