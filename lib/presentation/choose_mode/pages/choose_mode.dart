import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart'; 


class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 50
            ),
            child: Column(
              children: [
                Align(
                alignment: Alignment.topCenter,
                child: Padding(
                padding: const EdgeInsets.only(top: 15.0), // Add padding to the top
                child: SvgPicture.asset(
                  AppVectors.logo,
                  width: 60, // Set the desired width
                  height: 60, // Set the desired height
                ),
                ),
                ),
                  const Spacer(),
                  const Text(
                    'Choose Your Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 21,),
                   
               
                  
                  const SizedBox(height:50,),
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const ChooseModePage()
                        )
                     );
                    },
                    title: 'Get Started'
                  )
                ],
              ),
          ),
        ],
      ),
    
    );
  }
}