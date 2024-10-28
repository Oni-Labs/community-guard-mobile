import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FeedLoadingShimmer extends StatelessWidget {
  const FeedLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SliverFillRemaining(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 16,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                width: 24,
                                height: 24,
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // Placeholder para a imagem de perfil
                            ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 16,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                width: 24,
                                height: 24,
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 16,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 24,
                              height: 24,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                width: 24,
                                height: 24,
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
