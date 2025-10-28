import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/newsfeed_post.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {

  List<StoryModel> stories = [
    StoryModel(
      id: '1', 
      username: 'Juan', 
      profileImagePath: 'assets/profile/prof1.jpg', 
      storyImagePath: 'assets/myday/myday1.jpg', 
      timestamp: DateTime.now().subtract(const Duration(hours:5)),
      isViewed: false),

       StoryModel(
      id: '2', 
      username: 'Juan2', 
      profileImagePath: 'assets/profile/prof2.jpg', 
      storyImagePath: 'assets/myday/myday2.jpg', 
      timestamp: DateTime.now().subtract(const Duration(hours:24)),
      isViewed: false),

       StoryModel(
      id: '3', 
      username: 'Juan3', 
      profileImagePath: 'assets/profile/prof3.jpg', 
      storyImagePath: 'assets/myday/myday3.jpg', 
      timestamp: DateTime.now().subtract(const Duration(hours:9)),
      isViewed: false),

       StoryModel(
      id: '4', 
      username: 'Juan4', 
      profileImagePath: 'assets/profile/prof4.jpg', 
      storyImagePath: 'assets/myday/myday4.jpg', 
      timestamp: DateTime.now().subtract(const Duration(hours:11)),
      isViewed: false),

       StoryModel(
      id: '5', 
      username: 'Juan5', 
      profileImagePath: 'assets/profile/prof5.jpg', 
      storyImagePath: 'assets/myday/myday5.jpg', 
      timestamp: DateTime.now().subtract(const Duration(hours:15)),
      isViewed: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/icon/logo.png",
          height: 80,
        ),
        actions: [
          IconButton(onPressed:() {}, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Createpost(),
            StoriesList(
              stories: stories,
              onStoryTap: (story) {},
              ),
            NewsFeedPost(),
            NewsFeedPost(
              name: "Yae Miko",
              caption: "Having a blast with Ei!",
              imageurl: "assets/profile/prof3.jpg"),
        
            NewsFeedPost(
              name: "Raiden Shogun",
              caption: "Having a blast with you!",
              imageurl: "assets/profile/prof1.jpg",),
        
          
          ],
        ),
      ),
    );
  }
}

class False {
} 