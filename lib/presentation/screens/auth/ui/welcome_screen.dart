import 'package:finance_app/application/providers/auth_provider.dart';
import 'package:finance_app/application/theme/colors_theme.dart';
import 'package:finance_app/application/theme/text_theme.dart';
import 'package:finance_app/presentation/common/basic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends ConsumerState<WelcomeScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final size = MediaQuery.of(context).size;

    final headHeight = size.height * 0.4;

    final nextPage = ref.read(authProvider.select((value) => value.nextPage));

    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.4,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(headHeight / 3),
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                width: size.width,
                bottom: -50,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: backgroundColor,
                  ),
                  child: const Icon(
                    PhosphorIcons.currencyDollarFill,
                    size: 60,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: size.height / 8),
        Text(
          "FinanceApp",
          style: textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 50),
        Text(
          "A platform built for a new way of spending",
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: size.width * 0.8,
          child: BasicButton(
            onPressed: nextPage,
            text: "Get Started",
            trailing: const Icon(
              PhosphorIcons.arrowRightLight,
              size: 20,
            ),
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
