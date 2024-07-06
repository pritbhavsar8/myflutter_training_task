import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myflutter_training_task/Module7/TabbarWithoutAppbar.dart';
import 'package:myflutter_training_task/Module8/Auth/HomeScreen.dart';
import 'package:myflutter_training_task/Module8/Auth/Login_With_google.dart';
import 'package:myflutter_training_task/Module8/Auth/PhoneAuth.dart';
import 'package:myflutter_training_task/Module8/Auth/ResetPassword.dart';
import 'package:myflutter_training_task/Module8/Auth/SignIn.dart';
import 'package:myflutter_training_task/Module8/Auth/SignUp.dart';
import 'package:myflutter_training_task/Module8/Auth/otpScreen.dart';
import 'package:myflutter_training_task/Module8/FireStoreDatabse/AddTask_Screen.dart';
import 'package:myflutter_training_task/Module8/FireStoreDatabse/ViewTask_Screen.dart';
import 'package:myflutter_training_task/Module8/RealTimeDatabase/ChatScreen.dart';
import 'package:myflutter_training_task/Module8/RealTimeDatabase/addTask.dart';
import 'package:myflutter_training_task/Module8/RealTimeDatabase/viewTask.dart';
import 'package:myflutter_training_task/Module9/CarouselSlider.dart';
import 'package:myflutter_training_task/Module9/lottie.dart';
import 'package:myflutter_training_task/Module9/pageView.dart';
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
   if(kIsWeb)
  {
    await Firebase.initializeApp(
   options:  FirebaseOptions(
   apiKey: "AIzaSyCX5ZY_k-Y-hrr1bKJcUxBtrs1zo-4vPz0",
   authDomain: "my-flutter-training-efb19.firebaseapp.com",
   projectId: "my-flutter-training-efb19",
   storageBucket: "my-flutter-training-efb19.appspot.com",
   messagingSenderId: "970668995057",
   appId: "1:970668995057:web:1c798c9ba2066696da9450",
   measurementId: "G-PV9N6RV4W1"
   )
  );
  }
  else{
     await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  }
 
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter tutorial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: carouselSlider(),
      routes: {
        "first":(context) => HomeScreen(),
        "/second":(context) => SettingScreeen(),
      },
    );
  }
}

