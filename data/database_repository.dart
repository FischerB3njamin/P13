import '../models/post.dart';

abstract class DatabaseRepository {
  void addPost(Post post);
  List<Post> getAllPosts();
  void deletePost(Post post);
  void updatePost(Post oldPost, Post newPost);
}
