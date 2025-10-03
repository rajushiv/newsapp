import 'package:flutter/material.dart';
import 'package:newsapp/view/widget/NewsContainer.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageView.builder(
      controller: PageController(initialPage: 0),
      scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context , index){
         return Newscontainer(imgUrl: "https://www.istockphoto.com/photo/abstract-digital-news-concept-gm1189788155-337007770?utm_campaign=srp_photos_bottom&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fnews&utm_medium=affiliate&utm_source=unsplash&utm_term=news%3A%3A%3A",
             newsHead: "5g In India",
              newsDes: "With the Samsung Galaxy S25 FE 5G sale, the tech giant has also announced limited limited-period offer. Buyers can get Rs. 5000 cashback on the purchase if the payment is made from an HDFC Bank debit or credit card. In addition, customers getting the new Galaxy Buds 3 FE with Galaxy S25 FE will also get Rs. 4000 off. Lastly, buyers can also get two years of screen protection starting at Rs. 4199.",
             newsUrl: "https://www.hindustantimes.com/technology/samsung-galaxy-s25-fe-5g-mobile-goes-on-sale-price-in-india-sale-offers-and-more-101759223766255.html",
         );
        }),

    );
  }
}
