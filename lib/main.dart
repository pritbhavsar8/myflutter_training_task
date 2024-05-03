import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myflutter_training_task/Module8/SignIn.dart';
import 'firebase_options.dart';
import 'package:myflutter_training_task/Module5/Card.dart';
import 'package:myflutter_training_task/Module5/Container.dart';
import 'package:myflutter_training_task/Module5/Icon.dart';
import 'package:myflutter_training_task/Module5/Image.dart';
import 'package:myflutter_training_task/Module5/Image2.dart';
import 'package:myflutter_training_task/Module5/Layout_in_flutter.dart';
import 'package:myflutter_training_task/Module5/NestedContainer.dart';
import 'package:myflutter_training_task/Module5/Row_Column(2).dart';
import 'package:myflutter_training_task/Module5/Row_Column.dart';
import 'package:myflutter_training_task/Module5/Scaffold.dart';
import 'package:myflutter_training_task/Module6/Animate_Widget.dart';
import 'package:myflutter_training_task/Module6/Button.dart';
import 'package:myflutter_training_task/Module6/Button_Bar.dart';
import 'package:myflutter_training_task/Module6/DropDown.dart';
import 'package:myflutter_training_task/Module6/FloatingAction_Button.dart';
import 'package:myflutter_training_task/Module6/Outline_Button.dart';
import 'package:myflutter_training_task/Module6/Popup_menu.dart';
import 'package:myflutter_training_task/Module6/SettingScreen.dart';
import 'package:myflutter_training_task/Module6/WebView.dart';
import 'package:myflutter_training_task/Module6/app_structure_navigate.dart';
import 'package:go_router/go_router.dart';
import 'package:myflutter_training_task/Module7/AlertdialogBox.dart';
import 'package:myflutter_training_task/Module7/BottomSheet.dart';
import 'package:myflutter_training_task/Module7/Checkbox.dart';
import 'package:myflutter_training_task/Module7/DataTable.dart';
import 'package:myflutter_training_task/Module7/DatePicker.dart';
import 'package:myflutter_training_task/Module7/Drawer.dart';
import 'package:myflutter_training_task/Module7/IndexStack.dart';
import 'package:myflutter_training_task/Module7/ListView.dart';
import 'package:myflutter_training_task/Module7/Listtile.dart';
import 'package:myflutter_training_task/Module7/Radiobutton.dart';
import 'package:myflutter_training_task/Module7/SelectableText.dart';
import 'package:myflutter_training_task/Module7/Slider.dart';
import 'package:myflutter_training_task/Module7/Snackbar.dart';
import 'package:myflutter_training_task/Module7/Stackwidget.dart';
import 'package:myflutter_training_task/Module7/Tab_bar.dart';
import 'package:myflutter_training_task/Module7/Textfield.dart';
import 'package:myflutter_training_task/Module7/TimePicker.dart';
import 'package:myflutter_training_task/Module7/bottom_navigaton.dart';
import 'package:myflutter_training_task/Module7/switch.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return  HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'setting',
          builder: (BuildContext context, GoRouterState state) {
            return SettingScreeen();
          },
        ),
      ],
    ),
  ],
);
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter tutorial',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignIn(),
      routes: {
        "/first":(context) => HomeScreen(),
        "/second":(context) => SettingScreeen(),
      },
    );
  }
}

