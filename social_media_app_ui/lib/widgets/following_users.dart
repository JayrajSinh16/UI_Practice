import 'package:flutter/material.dart';
import 'package:social_media_app_ui/data/data.dart';
import 'package:social_media_app_ui/model/user_model.dart';

class FollowingUsers extends StatelessWidget {
  const FollowingUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: Text(
                  "Following",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0),
                ),
              ),
              Container(
                height: 80.0,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: ((context, index) {
                    User user = users[index];
                    return GestureDetector(
                      onTap: (){},
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.only(left: 10.0,),
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.5),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              user.profileImageUrl.toString(),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          );
  }
}