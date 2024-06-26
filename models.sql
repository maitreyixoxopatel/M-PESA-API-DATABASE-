
CREATE DATABASE MpesaAPI;
CONNECT TO MpesaAPI USER maitreyi;

CREATE TABLE users (
	user_id serial PRIMARY KEY,
	user_name VARCHAR ( 50 ) UNIQUE NOT NULL,
	role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
  	FOREIGN KEY (role_id)
    REFERENCES roles (role_id)
  
);

INSERT INTO users(column1, column2, column3)
VALUES (1, Roney, 1)
VALUES (2, Vincent, 7);

CREATE TABLE Profiles (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

select users.usernanmeName, roles.rolename
FROM roles
INNER JOIN users ON roles.id=users.id
WHERE user_id = 1;

CREATE TABLE `Transactions` (
  `conversationId` VARCHAR(30),
  `transactionDate` DATE(),
  `amount` INT(), UNIQUE NOT NULL
);
INSERT INTO Transactions(column1, column2, column3)
VALUES (1, "buy goods", 4)
VALUES (2, "gift a Friend", 7);

CREATE TABLE Transaction_Detail(
  `ConversationId` VARCHAR(30),
  `TransactionId` VARCHAR(15),
  `TransactionDate` DATE(),
  `ProductQuantity` BIGINT(10)
);

CREATE TABLE Mpesa (
	conversation_id TEXT(30),
  phone_number = BIGINT(),
  registered = BOOLEAN(),
);
INSERT INTO Mpesa(column1, column2, column3)
VALUES ("134543erwe32", "+1(456)456987", 4)
VALUES ("22fe2r45gftt", "+254710248170", 7);




select users.userName
FROM Transactions
INNER JOIN users ON conversations.id=users.id
WHERE ROLE_id = 1;

