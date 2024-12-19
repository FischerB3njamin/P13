import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/post.dart';

void main() {
  DatabaseRepository db = MockDatabase();

  Post a = Post(
      id: "P-100",
      title: "Post a",
      description: "this is my great descripiton",
      hashtags: "post",
      likes: 0);

  Post b = Post(
      id: "P-101",
      title: "Post b",
      description: "this is my great descripiton",
      hashtags: "post2",
      likes: 10);

  db.addPost(a);
  printPosts(db.getAllPosts(), "Insert Post: a");
  //second post
  db.addPost(b);
  printPosts(db.getAllPosts(), "Insert Post: b");
  db.deletePost(b);
  printPosts(db.getAllPosts(), "Removed b");
  db.updatePost(a, b);
  printPosts(db.getAllPosts(), "replaced, a with b");
}

void printPosts(List<Post> posts, String text) {
  print(text);
  for (Post post in posts) {
    print(post.title);
  }
}
