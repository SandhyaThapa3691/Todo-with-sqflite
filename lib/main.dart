import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/utils/theme_manager.dart';
import 'package:todo/view/todo_page.dart';


void main() {
  return runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(428, 926),
      builder: (context, child) {
        return MaterialApp(
          theme: appTheme(),
          debugShowCheckedModeBanner: false,
          title: 'Todo',
          home: const TodoPage(),
        );
      },
    );
  }
}
