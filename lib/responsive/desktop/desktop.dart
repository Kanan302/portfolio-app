import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/textbutton.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({
    Key? key,
    this.isDarkMode = false,
  }) : super(key: key);

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppTextButton(onPressed: () {}, text: 'Home'),
                      AppTextButton(onPressed: () {}, text: 'About'),
                      AppTextButton(onPressed: () {}, text: 'Skills'),
                      AppTextButton(onPressed: () {}, text: 'Projects'),
                      AppTextButton(onPressed: () {}, text: 'Contacts'),
                      Container(
                        width: 1,
                        height: 20,
                        color: isDarkMode
                            ? const Color(0XFF374151)
                            : const Color(0xFFE5E7EB),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          isDarkMode
                              ? Icons.brightness_2_outlined
                              : Icons.wb_sunny_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
