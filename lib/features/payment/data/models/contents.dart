class SplashScreenContent {
  String image;
  String title;
  String discription;

  SplashScreenContent(
      {required this.image, required this.title, required this.discription});
}

List<SplashScreenContent> contents = [
  SplashScreenContent(
    title: 'Scan, Pay & Enjoy!',
    image: 'assets/images/splash1.png',
    discription:
        "scan products you want to buy at your favorite store and pay by your phone & enjoy happy, friendly Shopping!",
  ),
  SplashScreenContent(
      title: 'Fast Delivery',
      image: 'assets/images/splash1.png',
      discription:
          "simply dummy text of the printing and typesetting industry."),
  SplashScreenContent(
      title: 'Reward surprises',
      image: 'assets/images/splash1.png',
      discription:
          "simply dummy text of the printing and typesetting industry."),
];
