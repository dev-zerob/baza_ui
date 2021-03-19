import 'package:baza_ui/models/post.dart';
import 'package:baza_ui/services/post_service.dart';
import 'package:baza_ui/view_models/post_view_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:baza_ui/core/failure.dart';
import 'package:baza_ui/injector.dart';
import '../mocks/post_service_mock.dart';

void main() {
  group('POST 요청 테스트', () {

    PostViewModel postViewModel;
    PostService postService;

    setUpAll(() async {
      await setUpInjector();
      Injector.allowReassignment = true;
      Injector.registerLazySingleton<PostService>(() => MockPostService());
      postService = Injector<PostService>();

      postViewModel = PostViewModel();
    });

    test('post view model 이 list posts를 가지고 있습니다.', () {
      expect(postViewModel.posts.length, 0);
    });

    test('post view model 의 getPosts()를 호출하면 posts 3개를 불러옵니다.', () async {
      List<Post> posts = [Post(),Post(),Post(),];

      when(postService.getPosts()).thenAnswer((_) async => Right(posts));

      await postViewModel.getPosts();
      expect(postViewModel.posts.length, 3);
    });

    test('post view model 의 getPosts() 가 실패할 경우 hasFailure이 true입니다.', () async {
      Failure failure = Failure(code: '', message: '');
      when(postService.getPosts()).thenAnswer((_) async => Left(failure));

      await postViewModel.getPosts();
      expect(postViewModel.hasFailure(), true);
    });
  });
}