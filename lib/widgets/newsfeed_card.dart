
import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiatchon_mobprog/constants.dart';
import 'package:quiatchon_mobprog/widgets/custom_text.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;
  final String? profileImage;
  final String? postImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
    this.profileImage,
    this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PROFILE HEADER
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: profileImage != null
                      ? AssetImage(profileImage!)
                      : null,
                  child: profileImage == null
                      ? const Icon(Icons.person)
                      : null,
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 3),
                          const Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // POST CONTENT
            CustomText(
              text: postContent,
              fontSize: 12,
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // POST IMAGE
            if (hasImage == true) _buildPostImage(),

            // LIKE, COMMENT, SHARE BUTTONS
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.thumb_up,
                      size: 16,
                      color: fbPrimary,
                    ),
                    label: CustomText(
                      text: (numOfLikes ?? 0).toString(),
                      fontSize: 11,
                      color: fbDarkPrimary,
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                      size: 16,
                      color: fbDarkPrimary,
                    ),
                    label: const Text(
                      'Comment',
                      style: TextStyle(fontSize: 11),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.redo,
                      size: 16,
                      color: fbDarkPrimary,
                    ),
                    label: const Text(
                      'Share',
                      style: TextStyle(fontSize: 11),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                    ),
                  ),
                ),
              ],
            ),

            // COMMENT FIELD
            Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(
                    'assets/images/meme.jpg',
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 30,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Write a comment...',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            const CustomText(
              text: 'View all comments',
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  // POST IMAGE LOADER
  Widget _buildPostImage() {
    if (postImage == null) {
      return const SizedBox.shrink();
    }

    if (postImage!.startsWith('http')) {
      return Image.network(
        postImage!,
        width: double.infinity,
        fit: BoxFit.cover,
        webHtmlElementStrategy: WebHtmlElementStrategy.fallback,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }

          return const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.broken_image,
                  size: 40,
                  color: Colors.grey,
                ),
                SizedBox(height: 8),
                Text(
                  'Unable to load image',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          );
        },
      );
    }

    return Image.asset(
      postImage!,
      width: double.infinity,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox(
          height: 200,
          child: Center(
            child: Icon(Icons.broken_image),
          ),
        );
      },
    );
  }
}
