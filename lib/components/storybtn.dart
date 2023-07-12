import 'package:flutter/material.dart';
import 'package:socialapp/data/story_data.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

Widget storyButton(StoryData story, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                final controller =
                    StoryController(); // Create a StoryController instance
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StoryView(
                            storyItems: [
                              StoryItem.pageImage(
                                url: story.storyUrl,
                                controller:
                                    controller, // Pass the created controller instance
                              ),
                            ],
                            controller:
                                controller, // Pass the created controller instance
                          )),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(story.storybacUrl),
                            fit: BoxFit.cover),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: NetworkImage(story.avatarUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          story.userName,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
