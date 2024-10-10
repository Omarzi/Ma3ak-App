import 'package:ma3ak_app/features/category/views/category_view.dart';
import 'package:ma3ak_app/features/home/views/home_view.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class NavigationMenuView extends StatefulWidget {
  const NavigationMenuView({super.key});

  @override
  State<NavigationMenuView> createState() => _NavigationMenuViewState();
}

class _NavigationMenuViewState extends State<NavigationMenuView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List tabs = [
      const HomeView(),
      const CategoryView(),
      Container(
        width: double.infinity,
        height: double.infinity,
      ),
      Container(
        width: double.infinity,
        height: double.infinity,
      ),
      // const SearchView(),
      // const NotificationView(),
      const ProfileView(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: tabs[currentIndex],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 90.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.r),
            topLeft: Radius.circular(16.r),
          ),
          child: Theme(
            data: ThemeData(splashColor: Colors.transparent),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.black,
              iconSize: 24.sp,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              enableFeedback: false,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: HexColor('9E9E9E'),
              selectedLabelStyle: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: .2.w,
              ),
              unselectedLabelStyle: TextStyle(
                color: HexColor('9E9E9E'),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: .2.w,
              ),
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 38.h,
                      width: 57.6.w,
                      child: currentIndex == 0
                          ? SvgPicture.asset(
                              AppImages.homeIconNotSelected,
                              colorFilter: ColorFilter.mode(
                                AppColors.primaryColor,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            )
                          : SvgPicture.asset(
                              AppImages.homeIconNotSelected,
                              colorFilter: ColorFilter.mode(
                                AppColors.greyScale500,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 38.h,
                      width: 57.6.w,
                      child: currentIndex == 1
                          ? SvgPicture.asset(
                              AppImages.categoryIcon,
                              colorFilter: ColorFilter.mode(
                                AppColors.primaryColor,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            )
                          : SvgPicture.asset(
                              AppImages.categoryIcon,
                              colorFilter: ColorFilter.mode(
                                AppColors.greyScale500,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                    ),
                    label: 'Category'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 38.h,
                      width: 57.6.w,
                      child: currentIndex == 2
                          ? SvgPicture.asset(
                              AppImages.searchIconNotSelected,
                              colorFilter: ColorFilter.mode(
                                AppColors.primaryColor,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            )
                          : SvgPicture.asset(
                              AppImages.searchIconNotSelected,
                              colorFilter: ColorFilter.mode(
                                AppColors.greyScale500,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 38.h,
                      width: 57.6.w,
                      child: currentIndex == 3
                          ? SvgPicture.asset(
                              AppImages.notificationIcon,
                              colorFilter: ColorFilter.mode(
                                AppColors.primaryColor,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            )
                          : SvgPicture.asset(
                              AppImages.notificationIcon,
                              colorFilter: ColorFilter.mode(
                                AppColors.greyScale500,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                    ),
                    label: 'Notification'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 38.h,
                      width: 57.6.w,
                      child: currentIndex == 4
                          ? SvgPicture.asset(
                              AppImages.profileIconSelected,
                              colorFilter: ColorFilter.mode(
                                AppColors.primaryColor,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            )
                          : SvgPicture.asset(
                              AppImages.profileIconSelected,
                              colorFilter: ColorFilter.mode(
                                AppColors.greyScale500,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                    ),
                    label: 'Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
