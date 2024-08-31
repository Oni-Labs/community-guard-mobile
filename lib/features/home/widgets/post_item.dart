import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class PostItem extends StatelessWidget {
  const PostItem(
      {super.key,
      this.isFavorite = false,
      this.isSaved = false,
      this.isCompleted = false});

  final bool isFavorite;
  final bool isSaved;
  final bool isCompleted;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRect(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Gustavo', style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: isCompleted
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
            Image.asset('assets/images/post.png', fit: BoxFit.cover),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          context.read<HomeBloc>().add(const FavoritePost());
                        },
                        icon: isFavorite
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              )
                            : const Icon(
                                Icons.favorite_border,
                                color: Colors.black54,
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.comment),
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
                                            ClipRect(
                                              child: ClipOval(
                                                child: Image.asset(
                                                  'assets/images/profile.jpg',
                                                  width: 30,
                                                  height: 30,
                                                  fit: BoxFit.cover,
                                                ),
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.share),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const SavePost());
                    },
                    icon: isSaved
                        ? const Icon(
                            Icons.bookmark,
                            color: Colors.black54,
                          )
                        : const Icon(Icons.bookmark_border),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
