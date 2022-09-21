import 'package:flutter/material.dart';

import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';
import '../widgets/tab_item.dart';
import '../widgets/story_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "Rhico Aqbar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Post", "20"),
                      InfoItem("Pengikut", "5782"),
                      InfoItem("Mengikuti", "38"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "R_Aqbar",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      "Jangan kitak suke melawan orang tue,karang masok nerake! ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "#Do'eOrangTue",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Masuk ke tautan",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Edit Profil",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Stori 1"),
                  StoryItem("Stori 2"),
                  StoryItem("Stori 3"),
                  StoryItem("Stori 4"),
                  StoryItem("Stori 5"),
                  StoryItem("Stori 6"),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
            itemBuilder: (context, index) => Image.network(
              "src",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_rounded),
              label: "Movie",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}
