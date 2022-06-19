import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:messenger/modules/messenger/messenger_screen.dart';
import 'package:messenger/modules/users/users_screen.dart';
import 'package:messenger/shard/bloc_observer.dart';
import 'package:messenger/shard/cubit/cubit.dart';

import 'layout/home_layout.dart';
import 'modules/bmi_result/bmi_result_screen.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/counter/counter screen.dart';
import 'modules/counter/cubit/cubit.dart';
import 'modules/counter/cubit/states.dart';
import 'modules/login/Login_Screen.dart';



void main() {

    BlocOverrides.runZoned(
          () {
        // Use blocs...
            runApp(const MyApp());

      },
      blocObserver: MyBlocObserver(),

    );


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeLayout(),
    );
  }
}
