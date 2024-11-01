import 'package:community_guard_mobile/features/feed/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../gen/assets.gen.dart';
import '../../home/bloc/home_bloc.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    super.key,
    this.isFavorite = false,
    this.isSaved = false,
    this.isCompleted = false,
  });

  final bool isFavorite;
  final bool isSaved;
  final bool isCompleted;

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image.asset(
                          Assets.icons.profile.path,
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Gustavo', style: TextStyle(fontSize: 16)),
                        Text('Avenida da República, 123',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: widget.isCompleted
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            )
                          : const Icon(
                              Icons.timer,
                              color: Colors.black54,
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PopupMenuButton(
                        icon: const Icon(Icons.more_vert),
                        onSelected: (value) {},
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: const Text('Informações'),
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: const Text('Denunciar'),
                              onTap: () {},
                            ),
                          ];
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Carousel with page indicator
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    children: [
                      Image.asset('assets/images/post.png', fit: BoxFit.cover),
                      Image.asset('assets/images/post.png', fit: BoxFit.cover),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 0.0,
                  right: 0.0,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 2,
                      effect: const ScrollingDotsEffect(
                        activeDotColor: Colors.deepPurple,
                        dotColor: Colors.grey,
                        dotHeight: 8.0,
                        dotWidth: 8.0,
                        spacing: 4.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const ExpandableText(
              user: 'Gustavo Alfredo',
              text:
                  'lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet',
              maxLines: 2,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: widget.isFavorite
                            ? const Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.deepPurple,
                              )
                            : const Icon(
                                Icons.sentiment_neutral,
                                color: Colors.black54,
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(
                          Icons.comment,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (_) {
                              return Column(
                                children: [
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.horizontal_rule),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('Comentários'),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: ListView.separated(
                                      itemCount: 10,
                                      itemBuilder: (_, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(children: [
                                            ClipOval(
                                              child: Image.asset(
                                                Assets.icons.profile.path,
                                                width: 30,
                                                height: 30,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            const Column(
                                              children: [
                                                Text('Gustavo'),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 12),
                                                  child: Text('Comentário'),
                                                )
                                              ],
                                            )
                                          ]),
                                        );
                                      },
                                      separatorBuilder: (_, index) {
                                        return const Divider();
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
