import 'package:baza_ui/models/post.dart';
import 'package:baza_ui/view_models/post_view_model.dart';
import 'package:flutter/material.dart';

import '../core/base_view.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<PostViewModel>(
      onModelReady: (PostViewModel postViewModel) async {
        await postViewModel.getPosts();
        if(postViewModel.hasFailure()) {
          // 에러 핸들링 해주세요.
        }
        postViewModel.setIsLoaded(true);
      },
      builder: (context, PostViewModel postViewModel, _) {
        if(postViewModel.isLoading()) return Center(child: CircularProgressIndicator(),);
        if(postViewModel.hasFailure()) return Material(child: Center(child: Text(postViewModel.failure.message),));

        return Material(
          child: ListView.builder(
            itemCount: postViewModel.posts.length,
            itemBuilder: (context, index) {
              Post post = postViewModel.posts[index];
              return Column(
                children: [
                  Text(post.title),
                  Text(post.body)
                ],
              );
            },
          ),
        );
      }
    );
  }
}
