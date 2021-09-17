
// class ArticleController extends GetxController {
//   @override
//   void onInit() {
//     ArticleData.init();
//     super.onInit();
//     update();
//   }
// }



// import 'package:get/get.dart';
// import 'package:sinoma/models/article_data.dart';
// import 'package:sinoma/pages/home/widgets/article_provider.dart';

// // TODO : Menyelesaikan controller artikel

// class ArticleController extends GetxController {
//   List<ArticleDataModel> articleList = [];
//   bool isLoading = true;
//   @override
//   void onInit() {
//     ArticleProvider().getPostsList(
//       onSuccess: (posts) {
//         articleList.addAll(posts);
//         isLoading = false;
//         update();
//       },
//       onError: (error) {
//         isLoading = false;
//         update();
//         print("Error");
//       },
//     );
//     super.onInit();
//   }
// }
