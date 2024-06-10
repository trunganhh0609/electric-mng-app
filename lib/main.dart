import 'package:electric_mng_app/common/theme/common.dart';
import 'package:electric_mng_app/common/widgets/common_screen.dart';
import 'package:electric_mng_app/common/widgets/input_widget.dart';
import 'package:electric_mng_app/test_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(GetMaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      // colorScheme: ThemeData().colorScheme.copyWith(primary: primaryColor),
      appBarTheme:
      AppBarTheme(backgroundColor: Colors.white, scrolledUnderElevation: 0
        // foregroundColor: whiteColor
      ),
    ),
    debugShowCheckedModeBanner: false,
    // initialRoute: Routers.initialRouter,
    // getPages:Routers.routers,
    home: CommonScreen(
      title: "Test Screen",
      actionEvent: (){},
      leadingWidget: Icon(Icons.arrow_back_ios),
      actionWidget: Icon(Icons.alarm),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            children: [
              InputWidget(
                hintText: "Input here",
              )
            ],
          ))
      ),
    ),
  );
}
