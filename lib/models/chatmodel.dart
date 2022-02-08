class ChatModel {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.imageUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: 'Osim Uka',
      message: 'How far na,you don run the assignment',
      time: '11:45am',
      imageUrl: 'assets/profile.jpeg'),
  ChatModel(
      name: 'John',
      message: 'How far na,you don run the assignment',
      time: '10:45am',
      imageUrl: 'assets/one.jpeg'),
  ChatModel(
      name: 'Jay',
      message: 'How far na,you don run the assignment',
      time: '9:45am',
      imageUrl: 'assets/two.jpeg'),
  ChatModel(
      name: 'Favour',
      message: 'How far na,you don run the assignment',
      time: '8:45am',
      imageUrl: 'assets/seven.jpeg'),
  ChatModel(
      name: 'Blessed',
      message: 'How far na,you don run the assignment',
      time: '7:45am',
      imageUrl: 'assets/three.jpeg'),
  ChatModel(
      name: 'Excel',
      message: 'How far na,you don run the assignment',
      time: '6:45am',
      imageUrl: 'assets/four.jpeg'),
  ChatModel(
      name: 'Peace',
      message: 'How far na,you don run the assignment',
      time: '5:45am',
      imageUrl: 'assets/six.jpeg'),
  ChatModel(
      name: 'Tolu',
      message: 'How far na,you don run the assignment',
      time: '5:04am',
      imageUrl: 'assets/profile.jpeg'),
];
