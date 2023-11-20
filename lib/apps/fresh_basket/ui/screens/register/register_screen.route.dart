import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_playground/apps/fresh_basket/features/auth/states/register_notifier.dart';
import 'package:flutter_playground/features/utile/state/show_password_state_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

@RoutePage()
class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
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
                            "Register",
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ProviderScope(
                  overrides: [
                    RegisterNotifier.registerNotifierProvider.overrideWith((ref) => RegisterNotifier()),
                  ],
                  child: Consumer(
                    builder: (context, ref2, child) {
                      final registerFormState = ref2.watch(RegisterNotifier.registerNotifierProvider);
                      final registerFormNotifier = ref2.read(RegisterNotifier.registerNotifierProvider.notifier);
                      final isReadyForSubmit = registerFormState.submissionStatus.isInitial && registerFormState.isValid && registerFormState.inputs.every((element) => !element.isPure);
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
                                        onChanged: (value) => registerFormNotifier.updateEmail(value),
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          errorText: registerFormState.email.error?.getMessage(),
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

                          //First Name Text Field
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
                                          "First Name",
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
                                        onChanged: (value) => registerFormNotifier.updateFirstName(value),
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          errorText: registerFormState.firstName.error?.getMessage(),
                                          contentPadding: const EdgeInsets.only(top: 8, bottom: 8, right: 7, left: 7),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(7.0),
                                          ),
                                          filled: true,
                                          hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                color: const Color(0xffD9D9D9),
                                              ),
                                          hintText: 'First Name',
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
                          //Last Name Text Field
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
                                          "Last Name",
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
                                        onChanged: (value) => registerFormNotifier.updateLastName(value),
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          errorText: registerFormState.lastName.error?.getMessage(),
                                          contentPadding: const EdgeInsets.only(top: 8, bottom: 8, right: 7, left: 7),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(7.0),
                                          ),
                                          filled: true,
                                          hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                color: const Color(0xffD9D9D9),
                                              ),
                                          hintText: 'Last Name',
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
                                              onChanged: (value) => registerFormNotifier.updatePassword(value),
                                              obscureText: !showPasswordState,
                                              decoration: InputDecoration(
                                                errorText: registerFormState.password.error?.getMessage(),
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
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        ///(loginFormState.isPure || loginFormState.isNotValid || !loginFormState.submissionStatus.isInitial)
                                        onPressed: () {
                                          AutoRouter.of(context).pop();
                                          /*AutoRouter.of(context).pushAndPopUntil(
                                          const FreshBasketHomeRoute(),
                                          predicate: (_) => false,
                                        );*/
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
                                          "Register",
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
              ],
            ),
          ),
        );
      },
    );
  }
}
