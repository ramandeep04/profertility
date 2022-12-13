class Config {
  static List<String> sortingFilters = [
    "Price - high to low",
    "Price - low to high",
    "Customer Rating",
    "Popularity",
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
