import 'dart:developer';

// import 'package:blocapiyt/data/models/post_model.dart';
// import 'package:blocapiyt/data/repositories/api/api.dart';
import 'package:dio/dio.dart';
import 'package:my_app/model/post_model.dart';
import 'package:my_app/repositories/api/api.dart';

class PostRepository {
  API api = API();

  Future<List<PostModel>> fetchPosts() async {
    try {
      Response response = await api.sendRequest
          .get("https://jsonplaceholder.typicode.com/posts");
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMap) => PostModel.fromJson(postMap)).toList();
    } catch (ex) {
      throw ex;
    }
  }
}
