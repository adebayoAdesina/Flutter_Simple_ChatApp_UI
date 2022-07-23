enum ChatMessageType { text, audio, image, video }
enum MessageStatus { notSent, notView, viewed}

class ChatMessage {
  String? text;
  ChatMessageType? messageType;
  MessageStatus? messageStatus;
  bool? isSender;

  ChatMessage({
    this.text,
    this.messageType,
    this.messageStatus,
    this.isSender
  });
}

List demoChatMessages = [
  ChatMessage(
    text: "Hi bro",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
  ),
  ChatMessage(
    text: "Hi bro",
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.notSent,
  ),
  ChatMessage(
    text: "Hi bro",
    messageType: ChatMessageType.image,
    messageStatus: MessageStatus.notView,
  )
];