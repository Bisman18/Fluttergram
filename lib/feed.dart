import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta/post.dart';

class Feed extends StatelessWidget {
  List<Post> posts = [
    Post(
        username: "Google",
        userImage:
            "https://neilpatel.com/wp-content/uploads/2018/12/google.jpg",
        postImage:
            "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "A beautiful sunset"),
    Post(
        username: "Facebook",
        userImage:
            "https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512",
        postImage:
            "https://i.insider.com/5ad4fd1bfacba823008b45e0?width=750&format=jpeg&auto=webp",
        caption: "Mountains."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: posts.length,
        itemBuilder: (ctx, i) {
          return Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image(
                              image: NetworkImage(posts[i].userImage),
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(posts[i].username),
                        ],
                      ),
                      IconButton(
                        icon: Icon(SimpleLineIcons.options),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                FadeInImage(
                  image: NetworkImage(posts[i].postImage),
                  placeholder: AssetImage("assets/placeholder.png"),
                  width: MediaQuery.of(context).size.width,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesome.heart_o),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesome.comment_o),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesome.send_o),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesome.bookmark_o),
                    ),
                  ],
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Liked By ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: "Google,",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                          text: " Flutter,",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                          text: " Facebook",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                          text: " and",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: " 1000 others",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),

                // caption
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 5,
                  ),
                  child: RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: posts[i].username,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                          text: " ${posts[i].caption}",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),

                // post date
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "August 2020",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
