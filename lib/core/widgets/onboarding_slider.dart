import 'package:community_guard_mobile/core/router.dart';
import 'package:community_guard_mobile/gen/assets.gen.dart';
import 'package:community_guard_mobile/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                buildPage(
                  Image.asset(
                    Assets.images.slideVigilance1.path,
                    width: 300,
                    height: 300,
                  ),
                  'Primeira descrição',
                  'Deslize com animação',
                ),
                buildPage(
                  Image.asset(
                    Assets.images.slideVigilance2.path,
                    width: 300,
                    height: 300,
                  ),
                  'Segunda descrição',
                  'Explore recursos incríveis',
                ),
                buildPage(
                  Image.asset(
                    Assets.images.slideVigilance3.path,
                    width: 300,
                    height: 300,
                  ),
                  'Chegou ao seu destino',
                  'Deslizando com animação',
                ),
              ],
            ),
            Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: () {
                  _pageController.jumpToPage(2); // Pular para a última página
                },
                child: const Text(
                  'Pular',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 8,
                        width: _currentPage == index ? 20 : 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? Colors.deepPurple
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 15,
              child: FloatingActionButton(
                backgroundColor: Colors.deepPurple,
                onPressed: () {
                  if (_currentPage == 2) {
                    // Navegar para a tela de registro ou próxima tela
                    talker.info("Navegar para a tela de registro");
                    const FeedRoute().go(context);
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(Widget image, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          image,
          const SizedBox(height: 40),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
