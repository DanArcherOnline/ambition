import 'package:ambition/application/auth/auth_bloc.dart';
import 'package:ambition/injection.dart';
import 'package:ambition/presentation/routes/router.gr.dart' as app_router;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Ambition',
        builder: ExtendedNavigator.builder(
          router: app_router.Router(),
        ),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(),
      ),
    );
  }
}
