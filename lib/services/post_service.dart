import 'dart:convert';

import 'package:baza_ui/models/post.dart';
import 'package:dartz/dartz.dart';
import '../core/failure.dart';
import 'package:http/http.dart' as http;

class PostService {
  Future<Either<Failure, List<Post>>> getPosts() async {
    try {
      final url = Uri.https('jsonplaceholder.typicode.com', '/posts');
      final response = await http.get(url);
      if(response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        List<Post> posts = [];
        data.forEach((item) => posts.add(Post.fromJSON(item)));
        return Right(posts);
      }
      return Left(Failure());

    } catch(e) {
      return Left(Failure());
    }
  }
}