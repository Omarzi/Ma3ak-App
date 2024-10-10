import 'package:ma3ak_app/utils/constants/exports.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          /// Top Bar
          Container(
            width: double.infinity,
            height: DeviceUtils.getScreenHeight(context) / 3.6,
            padding: EdgeInsets.symmetric(
                horizontal: DeviceUtils.getScreenWidth(context) / 15),
            decoration: BoxDecoration(
              color: HexColor('222222'),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Search bar
                SearchTextFieldWidget(controller: searchController),
                SizedBox(height: 10.h),

                /// Greeting Card
                const GreetingCardWidget(
                  userName: 'Kareem',
                  location: 'Fifth settlement..',
                ),
              ],
            ),
          ),

          /// Body
          Expanded(
            child: Column(
              children: [
                /// Title
                Text(
                  'BAKED\nFRESH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 20),

                /// Grid view for products
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 columns
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: AppConstants.products.length,
                    itemBuilder: (context, index) {
                      final product = AppConstants.products[index];
                      return ProductTileWidget(product: product);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
