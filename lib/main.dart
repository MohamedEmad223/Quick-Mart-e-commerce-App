import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_mart/quick_mart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // to fix fonts issue in realse mode
  await ScreenUtil.ensureScreenSize();
  GoogleFonts.config.allowRuntimeFetching = false;
  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString('assets/fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(
        ['assets/fonts/PlusJakartaSans'],
        license,
      );
    },
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const QuickMart());
  });
  runApp(const QuickMart());
}
