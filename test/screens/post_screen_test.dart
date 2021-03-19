import 'package:baza_ui/models/post.dart';
import 'package:baza_ui/screens/post_screen.dart';
import 'package:baza_ui/services/post_service.dart';
import 'package:baza_ui/view_models/post_view_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:baza_ui/injector.dart';
import '../mocks/post_service_mock.dart';

void main() {
  PostService postService;

  setUpAll(() async {
    await setUpInjector();
    Injector.allowReassignment = true;
    Injector.registerLazySingleton<PostService>(() => MockPostService());
    postService = Injector<PostService>();
  });

  testWidgets('asdf', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PostScreen()));

    Post post = Post(userId: 0, id: 0, title: 'title', body: 'body');
    List<Post> posts = [post, post, post,];
    when(postService.getPosts()).thenAnswer((_) async => Right(posts));

    await tester.pumpAndSettle();

    expect(find.text('title'), findsWidgets);
    verify(postService.getPosts());
  });
}