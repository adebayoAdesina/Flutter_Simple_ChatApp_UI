class Chat {
  String? name;
  String? lastMessage;
  String? image;
  String? time;
  bool? isActive;

  Chat({
    this.name,
    this.lastMessage,
    this.image,
    this.time,
    this.isActive,
  });
}

List chatsData = [
  Chat(
    name: 'Adebayo Adesina',
    lastMessage: 'Hey, how are you?',
    image: 'assets/265564586_1566835933658693_8998498918125821393_n.jpg',
    time: "3m ago",
    isActive: true,
  ),
  Chat(
    name: 'Flutter Logo',
    lastMessage: 'Hey, how are you?',
    image: 'assets/charger.png',
    time: "5m ago",
    isActive: false,
  ),
  Chat(
    name: 'Mathew Victoria',
    lastMessage: 'Hey, how are you?',
    image: 'assets/ba53b988a7b9d1a80a30e7484da9b6be--beachwear-fresh.jpg',
    time: "7m ago",
    isActive: false,
  )
];
