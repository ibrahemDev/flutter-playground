import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/features/auth/states/login_notifier.dart';
import 'package:flutter_playground/apps/fresh_basket/routes/fresh_basket_app_route.dart';
import 'package:flutter_playground/features/utile/state/show_password_state_provider.dart';
import 'package:flutter_playground/ui/routes/app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //ref.watch(showPasswordStateProvider);
    //ref.watch(showPasswordStateProvider.from().zzzz);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                freshBasketAppRouter.navigatorKey.currentState!.pop();
                appRouter.navigatorKey.currentState!.pop();
              },
            ),
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: constraints.maxHeight / 4,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assest/apps/fresh_basket/images/login.jfif"),
                            fit: BoxFit.contain,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 19),
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        color: const Color(0xffD9D9D9),
                        child: Center(
                          child: Text(
                            "Login",
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ProviderScope(
                  overrides: [
                    LoginNotifier.loginNotifierProvider.overrideWith((ref) => LoginNotifier()),
                  ],
                  child: Consumer(
                    builder: (context, ref2, child) {
                      final loginFormState = ref2.watch(LoginNotifier.loginNotifierProvider);
                      final loginFormNotifier = ref2.read(LoginNotifier.loginNotifierProvider.notifier);
                      final isReadyForSubmit = loginFormState.submissionStatus.isInitial && loginFormState.isValid && loginFormState.inputs.every((element) => !element.isPure);
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Email",
                                          style: Theme.of(context).textTheme.bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        onChanged: (value) => loginFormNotifier.updateEmail(value),
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          errorText: loginFormState.email.error?.getMessage(),
                                          contentPadding: const EdgeInsets.only(top: 8, bottom: 8, right: 7, left: 7),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(7.0),
                                          ),
                                          suffixIcon: const Icon(
                                            Icons.account_circle_outlined,
                                            color: Colors.black,
                                          ),
                                          filled: true,
                                          hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                color: const Color(0xffD9D9D9),
                                              ),
                                          hintText: 'Email',
                                          fillColor: Colors.white70,
                                        ),
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                              color: Colors.black,
                                            ),
                                        autofocus: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Password",
                                          style: Theme.of(context).textTheme.bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ProviderScope(
                                        overrides: [showPasswordStateProvider.overrideWith((ref) => false)],
                                        child: Consumer(
                                          builder: (context, ref3, child) {
                                            final bool showPasswordState = ref3.watch(showPasswordStateProvider);
                                            final showPasswordNotifier = ref3.read(showPasswordStateProvider.notifier);
                                            return TextField(
                                              onChanged: (value) => loginFormNotifier.updatePassword(value),
                                              obscureText: !showPasswordState,
                                              decoration: InputDecoration(
                                                errorText: loginFormState.password.error?.getMessage(),
                                                contentPadding: const EdgeInsets.only(top: 8, bottom: 8, right: 7, left: 7),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(7.0),
                                                ),
                                                suffixIcon: IconButton(
                                                  onPressed: () {
                                                    showPasswordNotifier.update((state) => !state);
                                                  },
                                                  icon: Icon(
                                                    !showPasswordState ? Icons.visibility : Icons.visibility_off,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                filled: true,
                                                hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                      color: const Color(0xffD9D9D9),
                                                    ),
                                                hintText: 'Password',
                                                fillColor: Colors.white70,
                                              ),
                                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                    color: Colors.black,
                                                  ),
                                              autofocus: false,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Forgot Password ?",
                                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                decoration: TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        ///(loginFormState.isPure || loginFormState.isNotValid || !loginFormState.submissionStatus.isInitial)
                                        onPressed: () {
                                          AutoRouter.of(context).pushAndPopUntil(
                                            const FreshBasketHomeRoute(),
                                            predicate: (_) => false,
                                          );
                                        },

                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            side: isReadyForSubmit
                                                ? const BorderSide(
                                                    width: 1, // thickness
                                                    color: Colors.black, // color
                                                  )
                                                : BorderSide.none,
                                            // border radius
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          padding: const EdgeInsets.symmetric(vertical: 20),
                                          //MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20)),
                                          backgroundColor: MaterialStateColor.resolveWith(
                                            (states) => isReadyForSubmit ? Colors.green : Colors.grey.shade400,
                                          ),
                                        ),
                                        child: Text(
                                          "Login",
                                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 27),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Divider()),
                      Text("OR"),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          ///(loginFormState.isPure || loginFormState.isNotValid || !loginFormState.submissionStatus.isInitial)
                          onPressed: () {},

                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.grey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assest/images/flat-color-icons_google.svg", semanticsLabel: 'Acme Logo'),
                              Text(
                                "Login With Google",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: Theme.of(context).textTheme.bodyLarge!,
                      ),
                      TextButton(
                        onPressed: () async {
                          await AutoRouter.of(context).push(const RegisterRoute());
                        },
                        child: Text(
                          "Register",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
