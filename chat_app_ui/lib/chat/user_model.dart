class UserModel {
  final String name;
  final String image;
  final String lastMsg;
  final String time;

  UserModel(
      {required this.name,
      required this.image,
      required this.lastMsg,
      required this.time});
}

List<UserModel> chats = [
  UserModel(
      name: 'Mohammed Salah',
      image:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/12DB/production/_104172840_gettyimages-923757862.jpg',
      lastMsg: 'Hello Mo!',
      time: '12:00 PM'),
  UserModel(
      name: 'Ahmed Sayed Zizo',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/4/43/Ahmed_Mostafa_Zizo.jpg',
      lastMsg: 'Hello Zizo!',
      time: '12:00 PM'),
  UserModel(
      name: 'Shika',
      image:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/12DB/production/_104172840_gettyimages-923757862.jpg',
      lastMsg: 'Hello Shika!',
      time: '12:00 PM'),
  UserModel(
      name: 'Elshenawy',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/4/43/Ahmed_Mostafa_Zizo.jpg',
      lastMsg: 'Hello Elshenawy!',
      time: '12:00 PM'),
  UserModel(
      name: 'Abdulaah ElSaid',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/4/43/Ahmed_Mostafa_Zizo.jpg',
      lastMsg: 'Hello Abdo!',
      time: '12:00 PM'),
  UserModel(
      name: 'Mohammed Salah',
      image:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/12DB/production/_104172840_gettyimages-923757862.jpg',
      lastMsg: 'Hello Mo!',
      time: '12:00 PM'),
  UserModel(
      name: 'Ahmed Sayed Zizo',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/4/43/Ahmed_Mostafa_Zizo.jpg',
      lastMsg: 'Hello Zizo!',
      time: '12:00 PM'),
  UserModel(
      name: 'Shika',
      image:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/12DB/production/_104172840_gettyimages-923757862.jpg',
      lastMsg: 'Hello Shika!',
      time: '12:00 PM'),
];
