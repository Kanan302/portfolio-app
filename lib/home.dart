import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;

  final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF030712),
    brightness: Brightness.dark,
  );

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color> textColor = MaterialStateProperty.all(
      isDarkMode ? Colors.white : Colors.black,
    );

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
                  padding: const EdgeInsets.only(right: 19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          foregroundColor: textColor,
                        ),
                        child: const Text('Home'),
                      ),
                      TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          foregroundColor: textColor,
                        ),
                        child: const Text('About'),
                      ),
                      TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          foregroundColor: textColor,
                        ),
                        child: const Text('Skills'),
                      ),
                      TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          foregroundColor: textColor,
                        ),
                        child: const Text('Projects'),
                      ),
                      TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                          foregroundColor: textColor,
                        ),
                        child: const Text('Contact'),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color:
                            isDarkMode ? const Color(0XFF374151) : const Color(0xFFE5E7EB),
                      ),
                      IconButton(
                        onPressed: toggleTheme,
                        style: ButtonStyle(foregroundColor: textColor),
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
