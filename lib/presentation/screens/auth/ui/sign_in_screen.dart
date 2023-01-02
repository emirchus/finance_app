import 'package:finance_app/application/common/email_util.dart';
import 'package:finance_app/application/providers/auth_provider.dart';
import 'package:finance_app/application/router/app_paths.dart';
import 'package:finance_app/application/router/app_router.dart';
import 'package:finance_app/application/theme/colors_theme.dart';
import 'package:finance_app/application/theme/text_theme.dart';
import 'package:finance_app/presentation/common/basic_button.dart';
import 'package:finance_app/presentation/common/loading_modal.dart';
import 'package:finance_app/presentation/screens/auth/ui/continue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final auth = ref.watch(authProvider);

    final validateWatch = ref.read(authProvider.select((value) => value.formKey.currentState?.validate));

    return SingleChildScrollView(
      child: SizedBox.fromSize(
        size: Size(size.width, size.height - 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  child: const Icon(
                    PhosphorIcons.currencyDollarFill,
                    size: 15,
                    color: backgroundColor,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "Finance App",
                  style: textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Spend without limits",
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: size.width * 0.8,
              child: Form(
                key: auth.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your email address",
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(
                          PhosphorIcons.envelopeLight,
                          size: 20,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty || !value.isValidEmail) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Your password",
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(
                          PhosphorIcons.lockLight,
                          size: 20,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    BasicButton(
                      text: "Continue",
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 20,
                      ),
                      onPressed: () {
                        if (validateWatch?.call() ?? false) {
                          print("TRUE");
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.8,
              child: Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.black12,
                      endIndent: 20,
                    ),
                  ),
                  Text(
                    "or",
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black26,
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.black12,
                      indent: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.8,
              child: ContinueButton(
                onPressed: () async {
                  //TODO: Read this uwu https://firebase.google.com/docs/auth/web/email-link-auth?authuser=0&hl=es
                },
                leading: const Icon(
                  PhosphorIcons.envelopeBold,
                  size: 20,
                ),
                text: "Continue with Email Link",
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.8,
              child: ContinueButton(
                onPressed: () async {
                  await LoadingModal.show(context, () async {
                    await Future.delayed(const Duration(seconds: 5));

                    final String? result = await auth.signInWithGoogle();

                    if (result != null) {
                      print(result);
                      return;
                    }
                    context.go(AppPaths.home);
                  });
                },
                leading: const Icon(
                  PhosphorIcons.googleLogoBold,
                  size: 20,
                ),
                text: "Continue with Google",
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.8,
              child: ContinueButton(
                onPressed: () {},
                leading: const Icon(
                  PhosphorIcons.facebookLogoBold,
                  size: 20,
                ),
                text: "Continue with Facebook",
              ),
            )
          ],
        ),
      ),
    );
  }
}
