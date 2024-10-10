import 'package:ma3ak_app/utils/constants/constants.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
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
                    SearchTextFieldWidget(
                      controller: searchController,
                    ),

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
              Container(
                color: HexColor('222222'),
                child: Container(
                  width: double.infinity,
                  height: DeviceUtils.getScreenHeight(context),
                  // padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 40.h),
                        child: Column(
                          children: [
                            /// Categories Collection
                            /// Category Row
                            const CategoryOrRecommendedTitleWidget(
                              title: 'Categories',
                            ),
                            SizedBox(height: 30.h),

                            /// Categories Components
                            CategoriesWidgets(),

                            /// Recommended Collection
                            /// Recommended Row
                            SizedBox(height: 30.h),
                            const CategoryOrRecommendedTitleWidget(
                              title: 'Recommended',
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),

                      /// Recommended Components
                      SizedBox(
                        height: DeviceUtils.getScreenHeight(context) / 3.6,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          itemCount: AppConstants.packages.length,
                          itemBuilder: (context, index) {
                            final package = AppConstants.packages[index];
                            return PackageTileWidget(package: package);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
