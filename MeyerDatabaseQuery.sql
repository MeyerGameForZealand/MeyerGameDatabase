use MeyerDatabase

-- Table containing data about the Players.
create table Player
(
	PlayerId int identity(1,1) primary key not null,
	PlayerName nvarchar(20) not null,
	Wins int not null,
	Losses int not null,
)

-- Table containing data about the game itself.
create table Game
(
	GameId int identity(1,1) primary key not null,
	CurrentRound int not null,
	NoOfPlayers int not null,
	Comment nvarchar(50),
	Players int not null,

	foreign key(Players) references Player(PlayerId)
)

-- Tabel containing data about the throws result.
create table Die
(
	ThrowId int identity(1,1) primary key not null,
	LeftDie int not null,
	RightDie int not null,
	LeftCheatDie int not null,
	RightCheatDie int not null
)

-- Table containing data sent from our raspberry pi.
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