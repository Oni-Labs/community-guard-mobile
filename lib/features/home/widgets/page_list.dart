// import 'package:flutter/material.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
//
// class BeerListView extends StatefulWidget {
//   @override
//   _BeerListViewState createState() => _BeerListViewState();
// }
//
// class _BeerListViewState extends State<BeerListView> {
//   static const _pageSize = 20;
//
//   final PagingController<int,  /*BeerSummary*/ int> _pagingController =
//   PagingController(firstPageKey: 0);
//
//   @override
//   void initState() {
//     _pagingController.addPageRequestListener((pageKey) {
//       // _fetchPage(pageKey);
//     });
//     super.initState();
//   }
//
//   // Future<void> _fetchPage(int pageKey) async {
//   //   try {
//   //     final newItems = await RemoteApi.getBeerList(pageKey, _pageSize);
//   //     final isLastPage = newItems.length < _pageSize;
//   //     if (isLastPage) {
//   //       _pagingController.appendLastPage(newItems);
//   //     } else {
//   //       final nextPageKey = pageKey + newItems.length;
//   //       _pagingController.appendPage(newItems, nextPageKey);
//   //     }
//   //   } catch (error) {
//   //     _pagingController.error = error;
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) =>
//       // Don't worry about displaying progress or error indicators on screen; the
//   // package takes care of that. If you want to customize them, use the
//   // [PagedChildBuilderDelegate] properties.
//   PagedListView<int, /*BeerSummary*/ int>(
//     pagingController: _pagingController,
//     builderDelegate: PagedChildBuilderDelegate< /*BeerSummary*/ int>(
//       itemBuilder: (context, item, index) => BeerListItem(
//         beer: item,
//       ),
//     ),
//   );
//
//   @override
//   void dispose() {
//     _pagingController.dispose();
//     super.dispose();
//   }
// }