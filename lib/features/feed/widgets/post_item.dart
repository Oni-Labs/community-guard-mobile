import 'dart:io';

import 'package:community_guard_mobile/features/feed/bloc/feed_bloc.dart';
import 'package:community_guard_mobile/features/feed/widgets/expandable_text.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../gen/assets.gen.dart';
import '../../home/bloc/home_bloc.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    super.key,
    this.isSupport = false,
    this.isCompleted = false,
    required this.urlPhotoUser,
    required this.title,
    required this.description,
    required this.urlPhotosPost,
    required this.address,
    required this.username,
    required this.date,
  });

  final bool isSupport;
  final bool isCompleted;
  final String urlPhotoUser;
  final String title;
  final String description;
  final List<String> urlPhotosPost;
  final String address;
  final String username;
  final String date;

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
      child: BlocBuilder<FeedBloc, FeedState>(
        builder: (context, state) {
          return Container(
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
                              widget.urlPhotoUser,
                              width: 35,
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.username,
                                style: const TextStyle(fontSize: 16)),
                            Text(widget.address,
                                style: const TextStyle(fontSize: 12)),
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
                        children: state.posts.map(
                          (post) {
                            // return ExtendedImage.network('');
                            return ExtendedImage.file(
                              File(
                                post.urlPhotosPost[
                                    post.urlPhotosPost.length - 1],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 0.0,
                      right: 0.0,
                      child: Center(
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: state.posts.length,
                          effect: const ExpandingDotsEffect(
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

                ExpandableText(
                  user: widget.username,
                  text: widget.description,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                              padding:
                                                  const EdgeInsets.all(8.0),
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
                                                      padding: EdgeInsets.only(
                                                          left: 12),
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
          );
        },
      ),
    );
  }
}
