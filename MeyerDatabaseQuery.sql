use MeyerDatabase

create table Player
(
	PlayerId int identity(1,1) primary key not null,
	PlayerName nvarchar(20) not null,
	Wins int not null,
	Losses int not null,
)

create table Game
(
	GameId int identity(1,1) primary key not null,
	CurrentRound int not null,
	NoOfPlayers int not null,
	Comment nvarchar(50),
	Players int not null,

	foreign key(Players) references Player(PlayerId)
)

create table Die
(
	ThrowId int identity(1,1) primary key not null,
	LeftDie int not null,
	RightDie int not null,
	LeftCheatDie int not null,
	RightCheatDie int not null
)

create table PiData
(
	PiDataId int not null,
	Player1HP int not null,
	Player2HP int not null,
	Player3HP int not null,
	Player4HP int not null,
	Player5HP int not null,
	Player6HP int not null,
	Turn int not null,
	PlayerAmount int not null,
	Winner int not null
)


drop table Player;
drop table Game;
drop table Die;
drop table PiData;

INSERT PiData
	values (1,0,0,0,0,0,0,0,0,0)