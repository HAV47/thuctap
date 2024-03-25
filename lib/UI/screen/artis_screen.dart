import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:havv/ui/themes/color_palete.dart';

class ArtistScreen extends StatelessWidget {
  final String coverImage = 'assets/images/Vintage.png';
  final String avatarImage = 'assets/images/Rectangle.png';
  final String songTitle = 'Bài hát';
  final String artistName = 'Nghệ sĩ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalete.white,
      appBar: AppBar(
        title: Text('Favorite Artist Music',
          style: TextStyle(
          fontFamily: 'MyFont',),),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(coverImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage(avatarImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                songTitle,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: ColorPalete.white,
                                  fontFamily: 'MyFont',
                                ),
                              ),
                              Text(
                                artistName,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: ColorPalete.white,
                                  fontFamily: 'MyFont',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(avatarImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      'Bài hát $index',
                      style: TextStyle(
                        fontFamily: 'MyFont',
                      ),
                    ),
                    subtitle: Text(
                      'Nghệ sĩ $index',
                      style: TextStyle(
                        fontFamily: 'MyFont',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

