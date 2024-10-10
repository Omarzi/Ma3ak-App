import 'package:intl/intl.dart';
import '../constants/exports.dart';

class DeviceUtils {
  // static Future<XFile?> pickImageFromGallery() async {
  //   final ImagePicker picker = ImagePicker();
  //   final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  //   return image;
  // }

  static String formatTime(String createdAt) {
    DateTime dateTime = DateTime.parse(createdAt);

    String formattedTime = DateFormat('HH.mm').format(dateTime);

    return formattedTime;
  }

  static String formatTime2(BuildContext context, TimeOfDay time) {
    final now = DateTime.now();
    final dateTime = DateTime(now.year, now.month, now.day, time.hour, time.minute);

    // Format the time with leading zeros for hours less than 10
    final formattedTime = DateFormat('hh:mm a').format(dateTime);

    return formattedTime;
  }

  static buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  String formatDateStringFromApi(
      {required String dateString,
      required String dateFormat,
      required BuildContext context}) {
    // Create a DateTime object from the string
    DateTime date = DateTime.parse(dateString);
    // Format the date using DateFormat
    String formattedDate = DateFormat(dateFormat).format(date);
    // logSuccess(formattedDate);
    return formattedDate;
  }

  static String formatDateString(
      {required DateTime date,
      required String dateFormat,
      required BuildContext context}) {
    // Format the date using DateFormat
    String formattedDate = DateFormat(dateFormat).format(date);
    // logSuccess(formattedDate);
    return formattedDate;
  }

  static String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  static Future<List<File>> pickImagesFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile>? images = await picker.pickMultiImage();
    if (images != null && images.isNotEmpty) {
      return images.map((image) => File(image.path)).toList();
    }
    return [];
  }

  static Container buildDotWidget(int index, int currentIndex,
      BuildContext context, Decoration decoration) {
    return Container(
      height: 8.h,
      width: currentIndex == index ? 32.w : 8.w,
      margin: EdgeInsets.only(right: 6.w),
      decoration: decoration,
    );
  }

  static void showCustomBottomSheet(
      {required BuildContext context, required Widget widget}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return widget;
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r))),
      backgroundColor: Colors.white,
    );
  }


  static void showSnackBar({
    required BuildContext context,
    required String message,
    required Color textColor,
    required TextStyle textStyle,
    Color? bgColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: textStyle.copyWith(color: textColor),
        ),
        backgroundColor: bgColor,
        duration: const Duration(milliseconds: 4000),
      ),
    );
  }

  static void initCacheHelper() async {
    await CacheHelper.init();
  }

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyBarHeight(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isKeyboardVisible(BuildContext context) async {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

  static isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
