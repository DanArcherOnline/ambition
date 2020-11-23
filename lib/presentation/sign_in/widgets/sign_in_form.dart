import 'package:ambition/application/auth/auth_bloc.dart';
import 'package:ambition/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ambition/domain/auth/auth_failure.dart';
import 'package:ambition/domain/core/dartz_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ambition/presentation/routes/router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            children: <Widget>[
              TextFormField(
                autocorrect: false,
                onChanged: (value) => context.bloc<SignInFormBloc>().add(
                      SignInFormEvent.emailChanged(value),
                    ),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context.bloc<SignInFormBloc>().add(
                      SignInFormEvent.passwordChanged(value),
                    ),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Password is too short',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
              ),
              FlatButton(
                onPressed: () {
                  context.bloc<SignInFormBloc>().add(const SignInFormEvent
                      .signInWithEmailAndPasswordPressed());
                },
                child: const Text('SIGN IN'),
              ),
              FlatButton(
                onPressed: () {
                  context.bloc<SignInFormBloc>().add(const SignInFormEvent
                      .registerWithEmailAndPasswordPressed());
                },
                child: const Text('REGISTER'),
              ),
              RaisedButton(
                onPressed: () {
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        state.authFailureOrSuccessOption.triFold<AuthFailure, Unit>(
          () => {},
          (failure) {
            FlushbarHelper.createError(
              message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server Error',
                emailAlreadyInUse: (_) => 'Email is already in use',
                invalidEmailAndPasswordCombination: (_) =>
                    'Email & Password do not match',
              ),
            ).show(context);
          },
          (_) {
            ExtendedNavigator.of(context).pushSignInPage();
            context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
          },
        );
      },
    );
  }
}
