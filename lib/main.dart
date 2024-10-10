import 'package:ma3ak_app/utils/constants/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DeviceUtils.setStatusBarColor(HexColor('222222'));
  DeviceUtils.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}
