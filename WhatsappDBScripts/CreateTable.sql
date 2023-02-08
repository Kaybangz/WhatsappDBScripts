USE [WhatsappDB]

GO

CREATE TABLE MessageSender
(
   senderId INT NOT NULL   PRIMARY KEY, 
   senderName  [NVARCHAR](50)  NOT NULL,
   senderNumber bigint NOT NULL,
   senderLocation  [NVARCHAR](50)  NOT NULL,
);

CREATE TABLE MessageReceiver
(
   receiverId INT NOT NULL   PRIMARY KEY, 
   receiverName  [NVARCHAR](50)  NOT NULL,
   receiverNumber bigint NOT NULL,
   receiverLocation  [NVARCHAR](50)  NOT NULL,
);

GO

INSERT INTO dbo.MessageSender VALUES
(1, 'John Okoro', 2349857648873, 'Lagos'),
(2, 'Micheal Opara', 2348123455689, 'Kaduna'),
(3, 'James Maduka', 2347038455783, 'Asaba'),
(4, 'Christine Okoye', 2349183848495, 'Lagos'),
(5, 'Livinus Pablo', 23488593939939, 'Awka')



INSERT INTO dbo.MessageReceiver VALUES
(6, 'Janet Madueke', 234985764236, 'Bauchi'),
(7, 'Japhet Mouka', 234937735623, 'Katsina'),
(8, 'Tyron Jenkins', 2349038456788, 'Asaba'),
(9, 'Oluchi Namo', 2347183884773, 'Port-harcourt'),
(10, 'Offor Churchhill', 2343839948433, 'Abuja')

GO

CREATE TABLE DirectMessages
(
   senderId int,
   receiverId int,
   textMessage nvarchar(200) NOT NULL,
   messageSentBy Datetime NOT NULL,
   FOREIGN KEY (senderId) REFERENCES MessageSender(senderId),
   FOREIGN KEY (receiverId) REFERENCES MessageReceiver(receiverId),
);

GO

INSERT INTO dbo.DirectMessages VALUES
(4, 6, 'Hello there', GETDATE()),
(2, 10, 'How was your day', GETDATE()),
(5, 8, 'I arrived safe', GETDATE()),
(3, 9, 'Hi', GETDATE()),
(1, 7, 'Wanna hang out?', GETDATE())



