class DisCover {
  String? name;
  String? location;
  String? score;
  String? imag;

  DisCover(
      {required this.name,
      required this.location,
      required this.score,
      required this.imag});
}

List<DisCover> discoverList = [
  DisCover(
      name: 'Perspolis',
      location: 'Iran - Fars',
      score: '4.9',
      imag: 'assets/images/perspolis.webp'),
  DisCover(
      name: 'Hafez',
      location: 'Iran - Fars',
      score: '5',
      imag: 'assets/images/hafez.webp'),
  DisCover(
      name: 'Saadi',
      location: 'Iran - Fars',
      score: '4.4',
      imag: 'assets/images/saadi.png'),

  // سر تیتر کاشان قرار بگیرد
  DisCover(
      name: 'kashan',
      location: 'Iran - kashan',
      score: '4.8',
      imag: 'assets/images/kashan.webp'),
];
