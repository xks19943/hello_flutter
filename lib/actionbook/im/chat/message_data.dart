enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

class MessageData {
  //头像
  String avatar;

  //标题
  String title;

  //子标题
  String subTitle;

  //消息时间
  DateTime time;

  //消息类型
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

//组装数据
List<MessageData> messageData = [
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '一休哥',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '多拉a梦',
      '机器猫！！！',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '一休哥',
      '我在思考问题。。',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '忍者神龟',
      '忍者神龟。。。。',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '一休哥',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '多拉a梦',
      '机器猫！！！',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '一休哥',
      '我在思考问题。。',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '忍者神龟',
      '忍者神龟。。。。',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '一休哥',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '多拉a梦',
      '机器猫！！！',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '一休哥',
      '我在思考问题。。',
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201911%2F05%2F20191105074931_chnln.thumb.400_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625226266&t=5478cdbb6f0a5c25ccefcb63731ebbb7',
      '忍者神龟',
      '忍者神龟。。。。',
      new DateTime.now(),
      MessageType.CHAT),
];
