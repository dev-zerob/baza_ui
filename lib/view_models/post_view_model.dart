import 'package:baza_ui/models/post.dart';
import 'package:baza_ui/services/post_service.dart';
import 'package:dartz/dartz.dart';
import 'package:baza_ui/core/base_model.dart';
import 'package:baza_ui/core/failure.dart';
import 'package:baza_ui/injector.dart';

class PostViewModel extends BaseModel {
  PostService _postService = Injector<PostService>();
  List<Post> posts = [];

  Future<void> getPosts() async {
    print(_postService);
    Either<Failure, List<Post>> either = await _postService.getPosts();
    print(either);
    either.fold((failure) => setFailure(failure), (posts) => this.posts = posts);
  }
}