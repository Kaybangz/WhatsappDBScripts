CREATE VIEW ViewMessages AS

SELECT MessageSender.senderName, MessageReceiver.receiverName, textMessage, messageSentBy
FROM DirectMessages
INNER JOIN MessageSender ON DirectMessages.senderId = MessageSender.senderId
INNER JOIN MessageReceiver ON DirectMessages.receiverId = MessageReceiver.receiverId;

GO

SELECT * FROM ViewMessages

GO

