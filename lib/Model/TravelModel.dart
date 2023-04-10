// ignore_for_file: non_constant_identifier_names, file_names
void main() {}

class TravelModel {
  String name;
  String? location;
  String? image;
  String? distance;
  String? temp;
  String? rating;
  String? description;
  String? totalprice;

// در اصل متغیر ها با حروف اول کوچک نوشته میشوند
  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.totalprice,
  });
}

List<TravelModel> travelList = [
  TravelModel(
    name: 'Hafez',
    location: 'Iran - Shiraz',
    image: 'assets/images/hafez.webp',
    distance: '5.2',
    temp: '10',
    rating: '8',
    description:
        'The Tomb of Hafez commonly known as Hāfezieh are two \nmemorial structures. erected in the northern edge of Shiraz, Iran, in memory of the celebrated Persian poet Hafez. The open pavilion structures are situated in the Musalla Gardens on the north bank of a seasonal river and house the marble tomb of Hafez',
    totalprice: '3500',
  ),
  TravelModel(
    name: 'saadi',
    location: 'Iran - Fars',
    image: 'assets/images/saadi.png',
    distance: '1.7',
    temp: '6',
    rating: '8',
    description:
        'Saadi Shirazi better known by his pen name Saadi also    \nknown as Sadi of Shiraz. Saadi was buried at the end of his life at a Khanqah at the current location. In the 13th century a tomb built for Saadi by Shams al-Din Juvayni, the vizir of Abaqa Khan. In the 17th century, this tomb was destroyed. ',
    totalprice: '5150',
  ),
  TravelModel(
    name: 'Tomb of Cyrus',
    location: 'Iran - Fars',
    image: 'assets/images/Tomb of Cyrus.webp',
    distance: '7',
    temp: '9',
    rating: '2',
    description:
        "The Tomb of Cyrus is the final resting place of Cyrus the ,\nGreat , the founder of the ancient. Achaemenid Empire. The mausoleum is located in Pasargadae, an archaeological site in the Fars Province of Iran. It was first identified as Cyrus' tomb in modern times by James Justinian Morier, who compared the monument to that described in the writings of Greek historian Arrian.",
    totalprice: '1385',
  ),
  TravelModel(
    name: 'perspolis',
    location: 'Iran - Fars',
    image: 'assets/images/perspolis.webp',
    distance: '8.8',
    temp: '14',
    rating: '98',
    description:
        'Persepolis was the ceremonial capital of the Achaemenid\nEmpire It is situated in the plains.  Modern day Shiraz is situated 60 kilometres (37 mi) southwest of the ruins of Persepolis. The earliest remains of Persepolis date back to 515 BC. It exemplifies the Achaemenid style of architecture. UNESCO declared the ruins of Persepolis a World Heritage Site in 1979.',
    totalprice: '2650',
  ),
];
