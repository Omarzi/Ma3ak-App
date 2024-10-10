import 'package:ma3ak_app/utils/constants/exports.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('222222'),
      appBar: AppBar(
        backgroundColor: HexColor('222222'),
        centerTitle: true,
        title: Text(
          'Profile',
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
        height: DeviceUtils.getScreenHeight(context),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),

              /// User Data
              /// Profile Image
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60.r,
                    backgroundImage: const AssetImage(AppImages.profileImage),
                  ),
                  Positioned(
                    right: -3.w,
                    bottom: 0.h,
                    child: SvgPicture.asset(AppImages.editIcon),
                  ),
                ],
              ),
              SizedBox(height: 12.h),

              /// Username
              Text(
                'Kareem Galal Ali',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),

              /// User phone
              Text(
                '01228787691',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20.h),

              /// Body
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// General Settings
                  Container(
                    color: HexColor('ededed'),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                    child: Text(
                      'General Settings',
                      style: TextStyle(
                        fontSize: 22.sp,
                        color: HexColor('959595'),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),

                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 18.h),
                    child: Column(
                      children: [
                        /// Mode Switch Tile
                        SettingTileWithSwitch(
                          icon: Icons.dark_mode_outlined,
                          title: 'Mode',
                          subtitle: 'Dark & Light',
                          switchValue: false,
                          onChanged: (bool value) {},
                        ),
                        SizedBox(height: 30.h),

                        /// Change Password Tile
                        SettingTileWithArrow(
                          icon: Icons.vpn_key_outlined,
                          title: 'Change Password',
                          onTap: () {},
                        ),
                        SizedBox(height: 30.h),

                        /// Language Tile
                        SettingTileWithArrow(
                          icon: Icons.language_outlined,
                          title: 'Language',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h.h),

                  /// Information
                  Container(
                    color: HexColor('ededed'),
                    padding:
                    EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                    child: Text(
                      'Information',
                      style: TextStyle(
                        fontSize: 22.sp,
                        color: HexColor('959595'),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),

                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 30.w, vertical: 18.h),
                    child: Column(
                      children: [
                        /// General Settings Tile
                        SettingTileWithArrow(
                          icon: Icons.install_mobile_outlined,
                          title: 'General Settings',
                          onTap: () {},
                        ),
                        SizedBox(height: 30.h),

                        /// Terms & Conditions Tile
                        SettingTileWithArrow(
                          icon: Icons.file_copy_outlined,
                          title: 'Terms & Conditions',
                          onTap: () {},
                        ),
                        SizedBox(height: 30.h),

                        /// Privacy Policy Tile
                        SettingTileWithArrow(
                          icon: Icons.privacy_tip_outlined,
                          title: 'Privacy Policy',
                          onTap: () {},
                        ),
                        SizedBox(height: 30.h),

                        /// Share This App Tile
                        SettingTileWithArrow(
                          icon: Icons.share_outlined,
                          title: 'Share This App',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}