import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/components/storybtn.dart';
import 'package:socialapp/data/story_data.dart';
import 'package:socialapp/utils/color_constant.dart';

class StoryApp extends StatefulWidget {
  const StoryApp({super.key});

  @override
  State<StoryApp> createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  List<StoryData> stories = [
    new StoryData(
      "Abdul Saboor",
      "https://img.freepik.com/free-vector/illustration-grapes-isolated-white-background_53876-17347.jpg?w=740&t=st=1689088566~exp=1689089166~hmac=ae610e5cb494ea313182a894bfabd87f056044e9ac13b6d76e12b6a49b454051",
      "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
      "https://img.freepik.com/free-photo/white-cloud-blue-sky_74190-7709.jpg?size=626&ext=jpg&uid=R77108860&ga=GA1.2.694556477.1685373770&semt=sph",
    ),
    new StoryData(
      "Abdul Samad",
      "https://img.freepik.com/free-vector/illustration-grapes-isolated-white-background_53876-17347.jpg?w=740&t=st=1689088566~exp=1689089166~hmac=ae610e5cb494ea313182a894bfabd87f056044e9ac13b6d76e12b6a49b454051",
      "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
      "https://img.freepik.com/free-photo/white-cloud-blue-sky_74190-7709.jpg?size=626&ext=jpg&uid=R77108860&ga=GA1.2.694556477.1685373770&semt=sph",
    ),
    new StoryData(
        "Abdul Saqib",
        "https://img.freepik.com/free-vector/illustration-grapes-isolated-white-background_53876-17347.jpg?w=740&t=st=1689088566~exp=1689089166~hmac=ae610e5cb494ea313182a894bfabd87f056044e9ac13b6d76e12b6a49b454051",
        "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
        "https://img.freepik.com/free-photo/white-cloud-blue-sky_74190-7709.jpg?size=626&ext=jpg&uid=R77108860&ga=GA1.2.694556477.1685373770&semt=sph"),
    new StoryData(
      "Abdul Saqib",
      "https://img.freepik.com/free-vector/illustration-grapes-isolated-white-background_53876-17347.jpg?w=740&t=st=1689088566~exp=1689089166~hmac=ae610e5cb494ea313182a894bfabd87f056044e9ac13b6d76e12b6a49b454051",
      "https://img.freepik.com/free-photo/fresh-mango_1339-1469.jpg?w=900&t=st=1689088427~exp=1689089027~hmac=f868f2f1ccc1b5b34549cdef9ddc70f9dc5c11ac018dfe9c6438b8ba07d3e40c",
      "https://img.freepik.com/free-photo/white-cloud-blue-sky_74190-7709.jpg?size=626&ext=jpg&uid=R77108860&ga=GA1.2.694556477.1685373770&semt=sph",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: ColorConstant.blueColor,
      child: Scaffold(
        backgroundColor: ColorConstant.blueColor,
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(stories[0], context),
                  storyButton(stories[1], context),
                  storyButton(stories[2], context),
                  storyButton(stories[3], context),
                  storyButton(stories[0], context),
                  storyButton(stories[1], context),
                  storyButton(stories[2], context),
                  storyButton(stories[3], context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
