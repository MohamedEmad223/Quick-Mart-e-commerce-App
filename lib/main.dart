import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_mart/quick_mart.dart';

import 'core/helpers/cache_helper.dart';

bool? isOnBoardingShows;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // to fix fonts issue in realse mode
  await ScreenUtil.ensureScreenSize();
  await CacheHelper().init();
  CacheHelper().saveData(key: 'is_showed_for_first_time', value: true);
  isOnBoardingShows = CacheHelper().getData(key: 'is_showed_for_first_time');
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
