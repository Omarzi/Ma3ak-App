import 'package:ma3ak_app/features/home/models/product_in_home.dart';
import 'package:ma3ak_app/features/home/views/widgets/product_tile_in_home_widget.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class AnySpecificCategoryView extends StatefulWidget {
  const AnySpecificCategoryView({super.key, required this.map});

  final Map<String, dynamic> map;

  @override
  State<AnySpecificCategoryView> createState() =>
      _AnySpecificCategoryViewState();
}

class _AnySpecificCategoryViewState extends State<AnySpecificCategoryView> {
  final List<ProductInHome> products = [
    ProductInHome(
      name: 'Cable',
      description: '4 placeable With 3M - High voltage',
      imageUrl: 'https://via.placeholder.com/150',
      price: '125 EGP',
      priceStable: false,
    ),
    ProductInHome(
      name: 'Lamp',
      description: 'Electric lamp to reserve high voltage',
      imageUrl: 'https://via.placeholder.com/150',
      price: '70 EGP',
    ),
    ProductInHome(
      name: 'Electric Wires',
      description: 'Absorbs quickly to leave body feeling soft and smooth.',
      imageUrl: 'https://via.placeholder.com/150',
      price: '1250 EGP',
      priceStable: false,
    ),
  ];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.map['categoryColor'],
      appBar: AppBar(
        backgroundColor: widget.map['categoryColor'],
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_outlined, color: Colors.white),
        ),
        title: Text(
          widget.map['categoryName'],
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.r),
            topRight: Radius.circular(60.r),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 28.h),

            /// Search bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: Colors.grey.withOpacity(.4),
                  )),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search here ...',
                  hintStyle: const TextStyle(color: Colors.black38),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 22.h,
                    // Horizontal padding to center text properly
                    vertical:
                        18.w, // Vertical padding to ensure center alignment
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      AppImages.searchIconNotSelected,
                      fit: BoxFit.scaleDown,
                    ), // Search icon
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 28.h),

            /// Searched Text
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'You\'ve searched  Electric Lamp',
                  style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 36.h),

            // Sorting Bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Sort by ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Newest',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  Icon(Icons.tune), // Sorting icon on the right
                ],
              ),
            ),
            SizedBox(height: 18.h),

            /// Product List
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductTileInHomeWidget(product: product);
                },
              ),
            ),

            /// Order Now Button
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
