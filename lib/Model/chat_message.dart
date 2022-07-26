enum ChatMessageType { text, audio, image, video }
enum MessageStatus { notSent, notView, viewed }

class ChatMessage {
  String? text;
  ChatMessageType? messageType;
  MessageStatus? messageStatus;
  bool? isSender;

  ChatMessage({this.text, this.messageType, this.messageStatus, this.isSender});
}

List demoChatMessages = [
  ChatMessage(
      text: "Hi bro",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: true),
  ChatMessage(
      text: "Hi",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false),
  ChatMessage(
      text: "How are you?",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.notView,
      isSender: true),
  ChatMessage(
      text: '',
      messageType: ChatMessageType.audio,
      messageStatus: MessageStatus.notSent,
      isSender: false),
  ChatMessage(
      text: '',
      messageType: ChatMessageType.video,
      messageStatus: MessageStatus.notView,
      isSender: false)
];
