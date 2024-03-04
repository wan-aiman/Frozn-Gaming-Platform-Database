
--Drop All Table
DROP TABLE Users
DROP TABLE Genres
DROP TABLE Games
DROP TABLE UserProgress
DROP TABLE Reviews

-- Create Users Table
CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Passkey VARCHAR(255) NOT NULL,
    Date_of_Birth DATE,
    Country VARCHAR(255)
);

-- Create Genres Table
CREATE TABLE Genres (
    Genre_ID INT PRIMARY KEY,
    Genre_Name VARCHAR(255),
    Descriptions VARCHAR(255),
    Popular_Games VARCHAR(255)
);

-- Create Games Table
CREATE TABLE Games (
    Game_ID INT PRIMARY KEY,
    Genre_ID INT,
    Title VARCHAR(255) NOT NULL,
    Release_Date DATE,
    Publisher VARCHAR(255),
    Platform VARCHAR(255),
    About VARCHAR(255),
    CONSTRAINT fk_games_genre FOREIGN KEY (Genre_ID) REFERENCES Genres(Genre_ID)
);

-- Create User Progress Table
CREATE TABLE UserProgress (
    Progress_ID INT PRIMARY KEY,
    User_ID INT,
    Game_ID INT,
    Hours_Played INT,
    Achievements_Unlocked INT,
    Save_Game_State VARCHAR(255),
    Last_Played_Date DATE,
    CONSTRAINT fk_user_progress_user FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    CONSTRAINT fk_user_progress_game FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID)
);

-- Create Reviews Table
CREATE TABLE Reviews (
    Review_ID INT PRIMARY KEY,
    User_ID INT,
    Game_ID INT,
    Rating DECIMAL(3, 2),
    Comments VARCHAR(255),
    Date_Posted DATE,
    CONSTRAINT fk_reviews_user FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    CONSTRAINT fk_reviews_game FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID)
);

-- Insert Data for Users
INSERT INTO Users VALUES (1001, 'Gamer123', 'gamer123@email.com', 'securepass', TO_DATE('1990-05-15','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1002, 'LukasHatchingMachine', 'adibrogamer@gmail.com', 'adibrogamer14', TO_DATE('1998-05-05','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1003, 'Fire_FigherL', 'sonubarman2005@gmail.com', 'arghya9830', TO_DATE('1993-02-12','YYYY-MM-DD'), 'UK');
INSERT INTO Users VALUES (1004, 'cauholky122', 'singharun1014@gmail.com', 'Shine@2095', TO_DATE('1993-04-18','YYYY-MM-DD'), 'UK');
INSERT INTO Users VALUES (1005, 'android3', 'pranilmhatre3@gmail.com', 'pranit9309947083', TO_DATE('1997-05-15','YYYY-MM-DD'), 'UK');
INSERT INTO Users VALUES (1006, 'LukasIsFireFIghter', 'maksandreevjd2331@rambler.ru', 'tapan00k', TO_DATE('2000-03-15','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1007, 'Dobrac_Profik', 'gurpal0476@gmail.com', 'harry098', TO_DATE('2002-05-11','YYYY-MM-DD'), 'RU');
INSERT INTO Users VALUES (1008, 'Nik0xdSunnyyyyyy', 'tt1054445@gmail.com', 'tt1054445@', TO_DATE('2002-04-12','YYYY-MM-DD'), 'RU');
INSERT INTO Users VALUES (1009, 'jejejsjsj1227', 'nakshatragoyal12345@gmail.com', 'nakshatraG@2', TO_DATE('1998-05-17','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1010, 'lukasczthegame', 'suka_anzhelac8256@rambler.ru', 'Flipkart741', TO_DATE('1997-09-17','YYYY-MM-DD'), 'BR');
INSERT INTO Users VALUES (1011, 'FoorUkraine', 'vinitvanpartiwar33@gmail.com', 'anki2001', TO_DATE('1996-08-25','YYYY-MM-DD'), 'UK');
INSERT INTO Users VALUES (1012, 'adijabsjnr123', 'pabloescobeef@gmail.com', 'Sachin$321', TO_DATE('1999-02-12','YYYY-MM-DD'), 'BR');
INSERT INTO Users VALUES (1013, 'EdgarDavis3', 'stealthykemon@gmail.com', 'Sachin$321', TO_DATE('2000-01-15','YYYY-MM-DD'), 'FR');
INSERT INTO Users VALUES (1014, 'tomiskobath', 'Rushikeshsurwase12@gmail.com', 'Rushapillu@07', TO_DATE('2001-7-18','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1015, 'kevinjeASIAT', 'anchitgogoi10@gmail.com', 'rajagogoi1234s', TO_DATE('2002-6-15','YYYY-MM-DD'), 'MY');
INSERT INTO Users VALUES (1016, 'burgir', 'anchitgogoi.kvk@gmail.com', '7002520885ag', TO_DATE('1999-7-12','YYYY-MM-DD'), 'FR');
INSERT INTO Users VALUES (1017, 'kennyjirka', 'harsh24rocky@gmail.com', 'H9013241340', TO_DATE('1991-10-19','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1018, 'loydman135', 'rcweld2009@gmail.com', 'vicky1212_55', TO_DATE('1993-08-11','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1019, 'nagatowithpain', 'mhucr7@gmail.com', 'MHUMSI1993', TO_DATE('1995-05-24','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1020, 'goku_negg', 'masterspartan1998@gmail.com', '5512632#HUsn', TO_DATE('1995-01-13','YYYY-MM-DD'), 'FR');
INSERT INTO Users VALUES (1021, 'shredingboi_martin', 'karuane7755@gmail.com', 'HHd#54M2$m', TO_DATE('1998-11-12','YYYY-MM-DD'), 'FR');
INSERT INTO Users VALUES (1022, 'Jakubko013', 'aboodwarhell2@gmail.com', 'Asas20201ops', TO_DATE('1999-11-23','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1023, 'svatz_boy', 'asusz370p@gmail.com', 'Asas20201ops', TO_DATE('1994-05-29','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1024, 'elizabeht_FOX', 'vassalloenzo@gmail.com', 'Simone07@#', TO_DATE('1993-09-15','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1025, 'ruzova_laska', 'elettricaclm@gmail.com', 'Artigiani$1', TO_DATE('1992-01-22','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1026, 'Maruvav', 'davideago7000@gmail.fr', 'Firenze16', TO_DATE('1998-01-23','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1027, 'Mony_kenko123', 'dadyago2611@gmail.com', 'Firenze16', TO_DATE('1999-05-19','YYYY-MM-DD'), 'MY');
INSERT INTO Users VALUES (1028, 'robloxkoncireal', 'reezh.teek30@gmail.com', 'MINKIOPEL12', TO_DATE('2003-03-14','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1029, 'lila_robloxlike', 'MINKIOPEL12', 'Ios5bet@8', TO_DATE('2000-05-25','YYYY-MM-DD'), 'USA');
INSERT INTO Users VALUES (1030, 'fan_pagedodo', 'Mattiasporrini@gmail.com', 'uomolupo9', TO_DATE('1997-01-11','YYYY-MM-DD'), 'MY');

-- Insert Data for Genres
INSERT INTO Genres VALUES (5001, 'Sci-Fi', 'Games set in futuristic and space environments.', 'Space Odyssey, Galactic Adventure');
INSERT INTO Genres VALUES (5002, 'FPS', 'Take on the role of a character within the game and experience the action through a first-person perspective.', 'Counter-Strike 2, Overwatch 2, Apex Legends, Call of Duty: Warzone');
INSERT INTO Genres VALUES (5003, 'RPG', 'Assume the roles of characters in a fictional setting. Often involve immersive storytelling, character development, and decision-making that impacts the game world.', 'Baldurs Gate, Elden Ring, Diablo IV');
INSERT INTO Genres VALUES (5004, 'Sports', 'Popular genre of video games that simulate the practice of traditional sports such as football, basketball, soccer, and many others.', 'EA SPORTS FC 24, Forza Horizon 5');
INSERT INTO Genres VALUES (5005, 'MMORPG', 'Stands for Massively Multiplayer Online Role-Playing Game, and it refers to a genre of video games that allows a large number of players to interact with one another within a virtual world.', 'Path of Exile, Lost Ark');
INSERT INTO Genres VALUES (5006, 'Horror', 'Feature elements of suspense, fear, and psychological horror, and they can range from survival horror games to more action-oriented horror titles.', 'Warhammer:Darktide, Phasmophobia');
INSERT INTO Genres VALUES (5007, 'Survival', 'Typically involve the player navigating a hostile environment and gathering resources to survive while also dealing with various challenges such as hunger, thirst, and hostile enemies.', 'Valheim, The Forest');
INSERT INTO Genres VALUES (5008, 'Fighting', 'Fighting game combat often features mechanics such as blocking, grappling, counter-attacking, and chaining attacks together into combos.', 'Mortal Kombat X');
INSERT INTO Genres VALUES (5009, 'Story Rich', 'Feature well-developed characters, intricate plotlines, and detailed world-building, providing players with a deep and engaging experience.', 'Detroit: Become Human');
INSERT INTO Genres VALUES (5010, 'Simulation', 'Simulation games are a genre of video games that aim to replicate real-world activities or situations.', 'Euro Truck Simulator 2');

-- Insert Data for Games
INSERT INTO Games VALUES (2001, 5001, 'Space Odyssey', TO_DATE('2022-01-20','YYYY-MM-DD'), 'Galaxy Studios', 'Windows', 'Explore the universe in this epic space adventure.');
INSERT INTO Games VALUES (2002, 5003, 'Baldurs Gate', TO_DATE('2023-08-03','YYYY-MM-DD'), 'Larian Studios', 'Windows, Mac', 'Gather your party and return to the Forgotten Realms in a tale of fellowship and betrayal, sacrifice and survival, and the lure of absolute power.');
INSERT INTO Games VALUES (2003, 5002, 'Counter-Strike 2', TO_DATE('2023-09-27','YYYY-MM-DD'), 'Valve', 'Windows, Mac, Linux', 'Built on the Source 2 engine, Counter-Strike 2 is modernized with realistic physically-based rendering, state of the art networking, and upgraded Community Workshop tools.');
INSERT INTO Games VALUES (2004, 5004, 'EA SPORTS FC 24', TO_DATE('2023-09-28','YYYY-MM-DD'), 'Electronic Arts', 'Windows', 'EA SPORTS FC™ 24 welcomes you to The Worlds Game: the most true-to-football experience ever with HyperMotionV, PlayStyles optimised by Opta, and an enhanced Frostbite™ Engine.');
INSERT INTO Games VALUES (2005, 5005, 'Path of Exile', TO_DATE('2013-10-24','YYYY-MM-DD'), 'Grinding Gear Games', 'Windows', 'You are an Exile, struggling to survive on the dark continent of Wraeclast, as you fight to earn power that will allow you to exact your revenge against those who wronged you.');
INSERT INTO Games VALUES (2006, 5010, 'Euro Truck Simulator 2', TO_DATE('2012-10-18','YYYY-MM-DD'), 'SCS Software', 'Windows, Mac', 'Travel across Europe as king of the road, a trucker who delivers important cargo across impressive distances!');
INSERT INTO Games VALUES (2007, 5006, 'Warhammer:Darktide', TO_DATE('2022-12-01','YYYY-MM-DD'), 'Fatshark', 'Windows', 'Take back the city of Tertium from hordes of bloodthirsty foes in this intense and brutal action shooter.');
INSERT INTO Games VALUES (2008, 5007, 'Valheim', TO_DATE('2021-02-02','YYYY-MM-DD'), 'Coffee Stain Publishing', 'Windows, Mac', 'A brutal exploration and survival game for 1-10 players, set in a procedurally-generated purgatory inspired by viking culture.');
INSERT INTO Games VALUES (2009, 5008, 'Mortal Kombat X', TO_DATE('2021-04-14','YYYY-MM-DD'), 'Warner Bros. Games', 'Windows, Mac', 'Experience the Next Generation of the #1 Fighting Franchise. Mortal Kombat X combines unparalleled, cinematic presentation with all new gameplay.');
INSERT INTO Games VALUES (2010, 5009, 'Detroit: Become Human', TO_DATE('2020-06-18','YYYY-MM-DD'), 'Quantic Dream', 'Windows', 'Detroit: Become Human puts the destiny of both mankind and androids in your hands, taking you to a near future where machines have become more intelligent than humans.');
INSERT INTO Games VALUES (2011, 5003, 'Elden Ring', TO_DATE('2022-02-25','YYYY-MM-DD'), 'FromSoftware Inc.', 'Windows', 'Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.');
INSERT INTO Games VALUES (2012, 5003, 'Diablo IV', TO_DATE('2023-10-18','YYYY-MM-DD'), 'Blizzard Entertainment', 'Windows', 'Join the fight for Sanctuary in Diablo IV, the ultimate action RPG adventure.');
INSERT INTO Games VALUES (2013, 5002, 'Apex Legends', TO_DATE('2020-11-05','YYYY-MM-DD'), 'Electronic Arts', 'Windows, Linux', 'Master an ever-growing roster of legendary characters with powerful abilities, and experience strategic squad play and innovative gameplay.');
INSERT INTO Games VALUES (2014, 5002, 'Call of Duty: Warzone', TO_DATE('2022-11-17','YYYY-MM-DD'), 'Activision', 'Windows', 'Welcome to Call of Duty®: Warzone™, the massive free-to-play combat arena which now features the brand-new map, Urzikstan.');
INSERT INTO Games VALUES (2015, 5004, 'Forza Horizon 5', TO_DATE('2021-11-09','YYYY-MM-DD'), 'Xbox Game Studios', 'Windows', 'Your Ultimate Horizon Adventure awaits! Explore the vibrant open world landscapes of Mexico with limitless, fun driving action in the worlds greatest cars.');
INSERT INTO Games VALUES (2016, 5001, 'Cyberpunk 2077', TO_DATE('2020-12-10','YYYY-MM-DD'), 'CD PROJEKT RED', 'Windows', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.');
INSERT INTO Games VALUES (2017, 5005, 'Lost Ark', TO_DATE('2018-11-07','YYYY-MM-DD'), 'Smilegate', 'Windows', 'A free-to-play MMO ARPG set in a vast, vibrant world with thrilling fights, endless customization, and endless adventure.');
INSERT INTO Games VALUES (2018, 5002, 'Overwatch 2', TO_DATE('2023-08-10','YYYY-MM-DD'), 'Blizzard', 'Windows, Mac', 'Overwatch 2 is a critically acclaimed, team-based shooter game set in an optimistic future with an evolving roster of heroes. Team up with friends and jump in today.');
INSERT INTO Games VALUES (2019, 5006, 'Phasmophobia', TO_DATE('2020-09-19','YYYY-MM-DD'), 'Kinetic Games', 'Windows, Mac, Linux', 'Phasmophobia is a 4 player online co-op psychological horror. Paranormal activity is on the rise and its up to you and your team to use all the ghost-hunting equipment at your disposal in order to gather as much evidence as you can.');
INSERT INTO Games VALUES (2020, 5007, 'The Forest', TO_DATE('2018-05-01','YYYY-MM-DD'), 'Kinetic Games', 'Windows, Linux', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.');

-- Insert Data for User Progress
INSERT INTO UserProgress VALUES (3001, 1001, 2001, 33, 5, 'Level 10', TO_DATE('2022-02-05','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3002, 1001, 2002, 303, 21, 'Act 10', TO_DATE('2023-12-05','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3003, 1002, 2011, 119, 19, 'Warrior 109', TO_DATE('2023-01-05','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3004, 1003, 2011, 309, 32, 'Vagabond 129', TO_DATE('2022-12-25','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3005, 1004, 2002, 124, 14, 'Act 5', TO_DATE('2023-11-15','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3006, 1004, 2011, 78, 15, 'Thief 59', TO_DATE('2022-11-01','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3007, 1005, 2018, 400, 54, '127', TO_DATE('2023-11-22','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3008, 1006, 2017, 1110, 79, 'Shadowhunter 39', TO_DATE('2023-08-25','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3009, 1007, 2017, 327, 26, 'Paladin 28', TO_DATE('2023-01-02','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3010, 1008, 2003, 1233, 69, 'Level 39 Major Sergeant', TO_DATE('2023-11-01','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3011, 1009, 2002, 455, 33, 'Act 19', TO_DATE('2023-12-01','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3012, 1010, 2011, 33, 7, 'Mage Level 40', TO_DATE('2023-12-05','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3013, 1011, 2011, 79, 17, 'Samurai Level 76', TO_DATE('2023-02-22','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3014, 1015, 2011, 109, 23, 'Samurai Level 99', TO_DATE('2023-12-14','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3015, 1016, 2002, 823, 5, 'Final Act', TO_DATE('2023-12-09','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3016, 1017, 2002, 159, 8, 'Act 12', TO_DATE('2023-11-19','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3017, 1017, 2016, 233, 23, 'Level 39', TO_DATE('2023-10-02','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3018, 1017, 2011, 10, 3, 'Samurai Level 10', TO_DATE('2023-12-15','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3019, 1023, 2013, 731, 8, 'Level 453', TO_DATE('2023-11-09','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3020, 1025, 2004, 113, 6, '78', TO_DATE('2023-12-01','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3021, 1029, 2003, 781, 56, 'Level 10 Private', TO_DATE('2024-12-13','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3022, 1029, 2011, 133, 5, 'Bandit Level 56', TO_DATE('2022-12-11','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3023, 1030, 2003, 233, 5, 'Sergeant Level 23', TO_DATE('2023-12-07','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3024, 1030, 2011, 77, 22, 'Mage Level 65', TO_DATE('2023-09-05','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3025, 1030, 2002, 1002, 50, 'Final Act', TO_DATE('2023-12-01','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3026, 1022, 2017, 333, 35, 'Warrior Level 31', TO_DATE('2023-01-05','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3027, 1027, 2002, 89, 7, 'Act 4', TO_DATE('2023-12-01','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3028, 1028, 2011, 83, 19, 'Prisoner Level 43', TO_DATE('2023-12-01','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3029, 1012, 2018, 239, 41, '79', TO_DATE('2023-11-05','YYYY-MM-DD'));
INSERT INTO UserProgress VALUES (3030, 1014, 2019, 535, 32, 'Level 93', TO_DATE('2021-01-25','YYYY-MM-DD'));

-- Insert Data for Reviews
INSERT INTO Reviews VALUES (4001, 1001, 2001, 8.6, 'Amazing space exploration game!', TO_DATE('2022-02-10','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4002, 1001, 2002, 9.1, 'My god…. Im blown away by this game. If you were on the fence… buy it. I was a little skeptical of turn based but entire game is captivating', TO_DATE('2023-12-14','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4003, 1002, 2011, 9.8, 'Best game ever made. Best songs best game mechanics best art design everything is perfect', TO_DATE('2023-12-12','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4004, 1003, 2011, 9.3, 'Best from soft game and best game I played so far very deep and nice world building and cool story', TO_DATE('2023-12-09','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4005, 1004, 2002, 9.6, 'Its a game of the year contender. Easily.', TO_DATE('2023-11-07','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4006, 1004, 2011, 5, 'Elden Ring is FromSoftware taming the monster they created, not by filing down its teeth and claws, but by giving players the weapons and armor to endure it.', TO_DATE('2022-05-25','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4007, 1005, 2018, 5, 'God why', TO_DATE('2023-10-21','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4008, 1006, 2017, 8.0, 'very good mmo, though it costs a lot of time sometimes its better watching streams than playing', TO_DATE('2023-01-01','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4009, 1007, 2017, 7.6, 'Nice game, fun to play, hard to master. I really loved this game. I stopped because he need too much Time or money to be competitive', TO_DATE('2023-08-16','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4010, 1008, 2003, 9.0, 'In an era of flagging service games, it is refreshing to see an old favourite so thoroughly rejuvenated. Blizzard, take note: this is how its done.', TO_DATE('2023-11-02','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4011, 1009, 2002, 6.8, 'First two acts of this game were great but the awful unplayable 3rd act ruined 60 hours of gameplay. Dont buy this game until its playable.', TO_DATE('2022-02-10','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4012, 1010, 2011, 6.5, 'Overly difficult just for the sake of being difficult Nonexistent story Slow sluggish combat. Look at how fast the characters move! A 10 year old moves faster than that.', TO_DATE('2023-11-01','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4013, 1011, 2011, 8.0, 'Elden Ring needed to be fresh and bold, and it succeeds, putting you in charge of your own adventure. However the open world has some uneven terrain.', TO_DATE('2022-03-07','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4014, 1015, 2011, 9.4, 'I seriously lost my soul to this game, it introduced me to Souls, and if I could travel back and play it again for the first time I would', TO_DATE('2022-12-08','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4015, 1016, 2002, 9.9, 'Thats the best game in the last 15 years or so. I cant remember the last time I had so much fun playing together with my girlfriend. Baldurs Gate 3 is one of the best games I have ever played.', TO_DATE('2023-12-14','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4016, 1017, 2002, 9.9, 'A multi-branched story and Deep characterization and High reproducibility and First class voice acting and Attractive technical and artistic graphics', TO_DATE('2023-12-12','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4017, 1017, 2016, 9.0, 'Ive never witnessed a game make a comeback quite like Cyberpunk, evolving from being unplayable to being one of the best video games aka the GOAT of video games.', TO_DATE('2023-12-11','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4018, 1017, 2011, 8.9, 'The game is an absolute masterpiece now. The gameplay is an absolute gem. I highly recommend only playing it on PC though.', TO_DATE('2023-11-12','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4019, 1023, 2013, 8.0, 'Greatest shooter ever', TO_DATE('2023-10-25','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4020, 1025, 2004, 4.1, 'I mean as everyone says. Same as always. Same flaws, defending a joke and the worst part is that Fifa is getting boring and feels like an arcade game. But for some reason you still buy it so who is the stupid one here?', TO_DATE('2023-12-08','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4021, 1029, 2003, 5, 'Git gud.', TO_DATE('2023-10-11','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4022, 1029, 2011, 8.4, 'Ive enjoyed the writing in Elden Ring, I like when I made my character blue and he sang the song', TO_DATE('2023-12-07','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4023, 1030, 2003, 9.0, 'Best Tactical Ego Shooter', TO_DATE('2023-10-30','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4024, 1030, 2011, 5, 'Bro its made by fromsoftware. Creators of the Dark souls trilogy, Bloodborne and Sekiro. Need i say more', TO_DATE('2023-11-29','YYYY-MM-DD'));
INSERT INTO Reviews VALUES (4025, 1030, 2002, 9.9, 'After several hours of experience, I admit Baldurs Gate 3 is a masterpiece and a special game! Congratulations Larian Studios.', TO_DATE('2023-12-12','YYYY-MM-DD'));

SELECT*FROM Users
SELECT*FROM Genres
SELECT*FROM Games
SELECT*FROM UserProgress
SELECT*FROM Reviews

--SQL STATEMENTS--

--6.1List all games available on the platform
SELECT Title as "Game Title" from Games

--6.2 List all available rating of games by users
SELECT Title as "Game Title", Rating, Username
FROM Games NATURAL JOIN Reviews NATURAL JOIN Users
ORDER BY Rating DESC

--6.3 List total hours played by each users
SELECT u.User_ID, u.Username, p.TotalHoursPlayed
FROM Users u
JOIN (SELECT User_ID, SUM(Hours_Played) AS TotalHoursPlayed
FROM UserProgress GROUP BY User_ID) p
ON u.User_ID = p.User_ID
ORDER BY p.TotalHoursPlayed DESC;

--6.4 Add a new player that plays EA SPORTS FC 24
INSERT INTO Users (User_ID, Username, Email, Passkey, Date_of_Birth, Country)
VALUES (1031, 'MoSalah', 'egyptianking@yahoo.com', 'ynwa', TO_DATE('1992-06-15','YYYY-MM-DD'), 'EG');

INSERT INTO UserProgress (Progress_ID, User_ID, Game_ID, Hours_Played, Achievements_Unlocked, Save_Game_State, Last_Played_Date)
VALUES (3031, 1031, (SELECT Game_ID FROM Games WHERE Title = 'EA SPORTS FC 24'), 20, 10, 'Season 3', TO_DATE('2023-01-15','YYYY-MM-DD'));

--6.5 Update user’s email 
UPDATE Users
SET Email = 'newemail@example.com'
WHERE User_ID = 1001;
SELECT * FROM Users WHERE User_ID = 1001;

--6.6 Delete review containing inappropriate word
DELETE FROM Reviews
WHERE LOWER(Comments) LIKE '%stupid%'

SELECT Comments FROM Reviews
WHERE LOWER(Comments) LIKE '%stupid%'

--6.7 List all players and their progress who play Elden Ring
SELECT U.User_ID, U.Username, G.Title, GP.Hours_Played,
       GP.Achievements_Unlocked, GP.Save_Game_State, GP.Last_Played_Date
FROM Users U
JOIN UserProgress GP ON U.User_ID = GP.User_ID
JOIN Games G ON GP.Game_ID = G.Game_ID
WHERE G.Title = 'Elden Ring';

--6.8 List all games that have higher rating than Counter-Strike 2
SELECT G.Title, ROUND(AVG(R.Rating), 2) AS AverageRating
FROM Games G
JOIN Reviews R ON G.Game_ID = R.Game_ID
GROUP BY G.Title
HAVING ROUND(AVG(R.Rating), 2) > 
    (SELECT ROUND(AVG(Rating), 2)
    FROM Games G2
    JOIN Reviews R2 ON G2.Game_ID = R2.Game_ID
    WHERE G2.Title = 'Counter-Strike 2')
ORDER BY AverageRating DESC;

--6.9 List all positive reviews

SELECT R.Review_ID, G.Title, R.Rating, R.Comments, R.Date_Posted
FROM Reviews R
JOIN Games G ON R.Game_ID = G.Game_ID
WHERE R.Rating > 7.5;

--6.10 List player count and total playtime for each games
SELECT G.Title, COUNT(UP.User_ID) AS PlayerCount, SUM(UP.Hours_Played) AS TotalPlaytime
FROM Games G
LEFT JOIN UserProgress UP ON G.Game_ID = UP.Game_ID
GROUP BY G.Title
ORDER BY PlayerCount DESC;

--SQL PROCEDURES--
ACCEPT v_GameTitle CHAR PROMPT 'Enter the Game Title: ';

CREATE OR REPLACE PROCEDURE GetGameAgeByName(p_GameTitle VARCHAR2)
AS
    v_ReleaseDate DATE;
    v_GameAge NUMBER;

    -- Declare a cursor
    CURSOR GameCursor IS
        SELECT Release_Date
        FROM Games
        WHERE Title = p_GameTitle;

BEGIN
    -- Open the cursor
    OPEN GameCursor;

    -- Fetch the result into v_ReleaseDate
    FETCH GameCursor INTO v_ReleaseDate;

    -- Check if the cursor fetched a row
    IF GameCursor%FOUND THEN
        v_GameAge := TRUNC(MONTHS_BETWEEN(SYSDATE, v_ReleaseDate) / 12);
        DBMS_OUTPUT.PUT_LINE('Game: ' || p_GameTitle);
        DBMS_OUTPUT.PUT_LINE('Release Date: ' || TO_CHAR(v_ReleaseDate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('Game Age: ' || v_GameAge || ' years');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Game ' || p_GameTitle || ' not found.');
    END IF;

    -- Close the cursor
    CLOSE GameCursor;

EXCEPTION
    WHEN OTHERS THEN
        -- Close the cursor if an exception occurs
        IF GameCursor%ISOPEN THEN
            CLOSE GameCursor;
        END IF;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END GetGameAgeByName;
/

-- Execute the procedure
EXEC GetGameAgeByName('&v_GameTitle');

--7.1--
ACCEPT v_GameTitle CHAR PROMPT 'Enter the Game Title: ';
CREATE OR REPLACE PROCEDURE GetGameAgeByName(p_GameTitle VARCHAR2)
AS
    v_ReleaseDate DATE;
    v_GameAge NUMBER;
BEGIN
    SELECT Release_Date INTO v_ReleaseDate
    FROM Games
    WHERE Title = p_GameTitle;
    v_GameAge := TRUNC(MONTHS_BETWEEN(SYSDATE, v_ReleaseDate) / 12);
    DBMS_OUTPUT.PUT_LINE('Game: ' || p_GameTitle);
    DBMS_OUTPUT.PUT_LINE('Release Date: ' || TO_CHAR(v_ReleaseDate, 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('Game Age: ' || v_GameAge || ' years');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Game ' || p_GameTitle || ' not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END GetGameAgeByName;
/
EXEC GetGameAgeByName('&v_GameTitle');

--7.2--
CREATE OR REPLACE PROCEDURE AddNewUser( p_UserID INT, p_Username VARCHAR2, p_Email VARCHAR2, p_Passkey VARCHAR2, p_Date_of_Birth DATE, p_Country VARCHAR2)
AS
BEGIN
    INSERT INTO Users (User_ID, Username, Email, Passkey, Date_of_Birth, Country)
    VALUES (p_UserID, p_Username, p_Email, p_Passkey, p_Date_of_Birth, p_Country); 
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('User added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        IF (DBMS_TRANSACTION.LOCAL_TRANSACTION_ID IS NOT NULL) THEN
            ROLLBACK;
        END IF;   
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END AddNewUser;
/
-- Example 
BEGIN
   AddNewUser( 1031,'Nazrin', 'nazz@example.com', 'password123', TO_DATE('2002-01-01', 'YYYY-MM-DD'), 'Malaysia');
END;
/

--7.3--
SET SERVEROUTPUT ON;
ACCEPT v_GameTitle CHAR PROMPT 'Enter the Game Title: ';

CREATE OR REPLACE PROCEDURE DisplayGameDetails ( p_GameTitle VARCHAR2)
AS
    v_GameID INT;
    v_Title VARCHAR2(255);
    v_Genre VARCHAR2(255);
    v_ReleaseDate DATE;
    v_Publisher VARCHAR2(255);
    v_Platform VARCHAR2(255);
    v_About VARCHAR2(255);    
BEGIN
    SELECT g.Game_ID, g.Title, gn.Genre_Name, g.Release_Date, g.Publisher, g.Platform, g.About
    INTO v_GameID, v_Title, v_Genre, v_ReleaseDate, v_Publisher, v_Platform, v_About
    FROM Games g
    JOIN Genres gn ON g.Genre_ID = gn.Genre_ID
    WHERE g.Title = p_GameTitle;
    
    DBMS_OUTPUT.PUT_LINE('Game ID: ' || v_GameID);
    DBMS_OUTPUT.PUT_LINE('Game Title: ' || v_Title);
    DBMS_OUTPUT.PUT_LINE('Genre: ' || v_Genre);
    DBMS_OUTPUT.PUT_LINE('Release Date: ' || TO_CHAR(v_ReleaseDate, 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('Publisher: ' || v_Publisher);
    DBMS_OUTPUT.PUT_LINE('Platform: ' || v_Platform);
    DBMS_OUTPUT.PUT_LINE('About: ' || v_About);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Game ' || p_GameTitle || ' not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END DisplayGameDetails;
/

EXEC DisplayGameDetails('&v_GameTitle');






--SQL FUNCTIONS--

--8.1 Average Rating For Game Genre
ACCEPT v_GenreName CHAR PROMPT 'Enter the genre name: ';

CREATE OR REPLACE FUNCTION GetAverageRatingForGenre
RETURN DECIMAL
AS
    v_AvgRating DECIMAL;
BEGIN
    SELECT AVG(Rating) INTO v_AvgRating
    FROM Games G
    JOIN Reviews R ON G.Game_ID = R.Game_ID
    WHERE G.Genre_ID = (SELECT Genre_ID FROM Genres WHERE Genre_Name = '&v_GenreName');

    RETURN v_AvgRating;
END GetAverageRatingForGenre;
/

SET SERVEROUTPUT ON;
DECLARE
    v_AvgRating DECIMAL;
BEGIN
    v_AvgRating := GetAverageRatingForGenre;
    DBMS_OUTPUT.PUT_LINE('Average Rating for Genre ' || '&v_GenreName' || ': ' || v_AvgRating);
END;
/

--8.2 Average Rating For Game
ACCEPT v_Title CHAR PROMPT 'Enter the game title: ';

CREATE OR REPLACE FUNCTION CalculateAverageRatingForGame
RETURN DECIMAL
AS
    v_AvgRating DECIMAL;
BEGIN
    SELECT AVG(Rating) INTO v_AvgRating
    FROM Reviews R
    JOIN Games G ON R.Game_ID = G.Game_ID
    WHERE G.Title = '&v_Title';

    RETURN v_AvgRating;
END CalculateAverageRatingForGame;
/

SET SERVEROUTPUT ON;
DECLARE
    v_AvgRating DECIMAL;
BEGIN
    v_AvgRating := CalculateAverageRatingForGame;
    DBMS_OUTPUT.PUT_LINE('Average Rating for Game ' || '&v_Title' || ': ' || v_AvgRating);
END;
/

--
ACCEPT v_Title CHAR PROMPT 'Enter the game title: ';
CREATE OR REPLACE FUNCTION GetTotalAchievementsUnlocked
RETURN DECIMAL AS v_TotalUnlocked DECIMAL;
BEGIN
    SELECT SUM(Achievements_Unlocked) INTO v_TotalUnlocked
    FROM UserProgress R
    JOIN Games G ON R.Game_ID = G.Game_ID
    WHERE G.Title = '&v_Title';
    RETURN v_TotalUnlocked;
END GetTotalAchievementsUnlocked;
/
SET SERVEROUTPUT ON;
DECLARE v_TotalUnlocked DECIMAL;
BEGIN
    v_TotalUnlocked := GetTotalAchievementsUnlocked;
    DBMS_OUTPUT.PUT_LINE(' Total Achievements Unlocked for Game ' || '&v_Title' || ': ' || v_TotalUnlocked);
END;
/

ACCEPT v_Title CHAR PROMPT 'Enter the game title: ';
CREATE OR REPLACE FUNCTION GetTotalAchievementsUnlocked
RETURN DECIMAL AS v_TotalUnlocked DECIMAL;
BEGIN
    SELECT SUM(Achievements_Unlocked) INTO v_TotalUnlocked
    FROM UserProgress R
    JOIN Games G ON R.Game_ID = G.Game_ID
    WHERE G.Title = '&v_Title';
    RETURN v_TotalUnlocked;
END GetTotalAchievementsUnlocked;
/
SET SERVEROUTPUT ON;
DECLARE v_TotalUnlocked DECIMAL;
BEGIN
    v_TotalUnlocked := GetTotalAchievementsUnlocked;
    DBMS_OUTPUT.PUT_LINE(' Total Achievements Unlocked for Game ' || '&v_Title' || ': ' || v_TotalUnlocked);
END;
/

------
SET SERVEROUTPUT ON
DECLARE 
PROCEDURE compare (value  varchar2,  pattern varchar2 ) is 
BEGIN 
   IF value LIKE pattern THEN 
      dbms_output.put_line ('True'); 
   ELSE 
      dbms_output.put_line ('False'); 
   END IF; 
END;  
BEGIN 
   compare('Zara Ali', 'Z%A_i'); 
   compare('Nuha Ali', 'Z%A_i'); 
END; 
/






