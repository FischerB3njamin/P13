import '../models/post.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<Post> posts = [];
  @override
  void addPost(Post post) => posts.add(post);

  @override
  void deletePost(Post post) => posts.remove(post);

  @override
  List<Post> getAllPosts() => posts;

  @override
  void updatePost(Post oldPost, Post newPost) =>
      posts[posts.indexOf(oldPost)] = newPost;
}
