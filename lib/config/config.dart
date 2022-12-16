class Config {
  static List<String> sortingFilters = [
    "Price - high to low",
    "Price - low to high",
    "Customer Rating",
    "Popularity",
  ];

  static List<String> sortingTest = [
    "All Tests",
    "Open Tests",
  ];

  static List<String> dietition = [
    "Lifestyle",
    "Nutrition",
    "Wellness",
  ];

  static List<Map<String, String>> diet = [
    {
      "image": "assets/images/diet1.png",
      "title": "How to Maintain body wait",
      "description": "Want to join ? Click on the button below to join in now"
    },
    {
      "image": "assets/images/diet2.png",
      "title": "Have balance diet everyday",
      "description": "Want to join ? Click on the button below to join in now"
    },
    {
      "image": "assets/images/diet3.png",
      "title": "Is medicines good for health?",
      "description": "Want to join ? Click on the button below to join in now"
    },
  ];

  static List<Map<String, String>> paymentOptions = [
    {
      "image": "assets/images/debitcard.png",
      "title": "Debit/Credit Card",
    },
    {
      "image": "assets/images/netbanking.png",
      "title": "Net Banking",
    },
    {
      "image": "assets/images/cod.png",
      "title": "Cash On Delivery",
    },
  ];
}
