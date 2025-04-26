import 'dart:ui';
import 'package:flutter/material.dart' show Align, Alignment, AssetImage, BackdropFilter, BoxDecoration, BoxFit, BoxShape, BuildContext, ClipOval, Color, Colors, Column, Container, DecorationImage, EdgeInsets, FontWeight, GestureDetector, MainAxisAlignment, MaterialPageRoute, Navigator, Padding, Row, Scaffold, SizedBox, Spacer, Stack, StatelessWidget, Text, TextStyle, ThemeMode, Widget;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/theme/app_colors.dart'; 
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presentation/splash/pages/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Ensure Bloc package is imported
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart'; // Import ThemeCubit if defined in your project
import 'package:spotify/common/widgets/button/basic_app_button.dart'; 
class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.chooseModeBG,
                )
              )
            ),
          ),

          Container(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Choose Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 40,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  // ignore: deprecated_member_use
                                  color: const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grayColor
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 40,),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  // ignore: deprecated_member_use
                                  color: const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle
                                ),
                                 child: SvgPicture.asset(
                                  AppVectors.sun,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(height: 15,),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grayColor
                          ),
                        )
                      ],
                    ),
                  ],
                 ),
                  const SizedBox(height: 50,),
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const SplashPage()
                        )
                     );
                    },
                    title: 'Continue'
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}