
import 'package:flutter/material.dart';
import 'package:quiatchon_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // POST 1 - NO IMAGE
        NewsfeedCard(
          userName: "BATUMBAKAL",
          postContent: "NO TO PAX SILICA NGANIIIIII.",
          date: "November 20, 2026",
          numOfLikes: 150,
          profileImage: 'assets/images/pfp.jpg',
        ),

        // POST 2 - PAX IMAGE
        NewsfeedCard(
          userName: "xo_shiri",
          postContent: "no to pax silica hey #ano na government?",
          date: "November 21, 2026",
          numOfLikes: 250,
          hasImage: true,
          profileImage: 'assets/images/pfp.jpg',
          postImage: 'assets/images/pax.jpg',
        ),

        // POST 3
        NewsfeedCard(
          userName: "Clark",
          postContent: "Posted: Love the scenery here!",
          date: "November 22, 2026",
          numOfLikes: 320,
          profileImage: 'assets/images/pfp.jpg',
          hasImage: true,
          postImage: 'https://cdn.adventure-life.com/10/62/17/Europe_13/1300x820.webp',
        ),

        // POST 4
        NewsfeedCard(
          userName: "Alex",
          postContent: "Kapagod pero worth it! #travelgoals",
          date: "November 23, 2026",
          numOfLikes: 180,
          profileImage: 'assets/images/pfp.jpg',
          hasImage: true,
          postImage: 'https://www.travelandleisure.com/thmb/MriQxOVvVJ1MLNgWUXbGl8L2rGk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/TAL-Backpacker-BUDGET0323-eeaf531276694f93966baa8fbcd2730d.jpg',
        ),

        // POST 5
        NewsfeedCard(
          userName: "Taylor",
          postContent: "Good vibes and good memories!",
          date: "November 24, 2026",
          numOfLikes: 420,
          profileImage: 'assets/images/pfp.jpg',
          hasImage: true,
          postImage: 'https://anitacleare.co.uk/wp-content/uploads/2020/01/dimitri-houtteman-2P6Q7_uiDr0-unsplash-scaled-e1617959667301.jpg',
        ),

        // POST 6 - NO IMAGE
        NewsfeedCard(
          userName: "Chris",
          postContent: "Never stop chasing your dreams.",
          date: "November 24, 2026",
          numOfLikes: 95,
          profileImage: 'assets/images/pfp.jpg',
        ),

        // POST 7
        NewsfeedCard(
          userName: "Jamie",
          postContent: "Lupa ng katutubo, ipaglaban!",
          date: "November 25, 2026",
          numOfLikes: 21000,
          profileImage: 'assets/images/pfp.jpg',
        ),

        // POST 8
        NewsfeedCard(
          userName: "Morgan",
          postContent: "Enjoying every little moment.",
          date: "November 25, 2026",
          numOfLikes: 350,
          profileImage: 'assets/images/pfp.jpg',
          hasImage: true,
          postImage: 'https://framerusercontent.com/images/kQimm3BY6h1SXbXLeu3fHoZaQ.jpg?width=1920&height=1137',
        ),

        // POST 9
        NewsfeedCard(
          userName: "Jordan",
          postContent: "Life is better with good company.",
          date: "November 26, 2026",
          numOfLikes: 275,
          profileImage: 'assets/images/pfp.jpg',
          hasImage: true,
          postImage: 'https://media.glamour.com/photos/60aeae55e0cdfae5f9ce3c7a/master/w_2560%2Cc_limit/V2_FRS_040621_TP_01081.jpeg',
        ),

        // POST 10
        NewsfeedCard(
          userName: "Sam",
          postContent: "DAPAT MAY MANAGOT.",
          date: "November 27, 2026",
          numOfLikes: 500,
          profileImage: 'assets/images/pfp.jpg',
        ),

        // POST 11
        NewsfeedCard(
          userName: "Riley",
          postContent: "A little progress every day adds up.",
          date: "November 28, 2026",
          numOfLikes: 125,
          profileImage: 'assets/images/pfp.jpg',
        ),
      ],
    );
  }
}
