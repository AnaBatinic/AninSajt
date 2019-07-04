-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 05:26 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boardgames`
--

-- --------------------------------------------------------

--
-- Table structure for table `boardgame`
--

CREATE TABLE `boardgame` (
  `id_bg` int(4) NOT NULL,
  `name` varchar(35) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `players` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boardgame`
--

INSERT INTO `boardgame` (`id_bg`, `name`, `description`, `image`, `price`, `players`) VALUES
(1, 'Betrayal at House on the Hill', 'Betrayal at House on the Hill quickly builds suspense and excitement as players explore a haunted mansion of their own design, encountering spirits and frightening omens that foretell their fate. With an estimated one hour playing time, Betrayal at House on the Hill is ideal for parties, family gatherings or casual fun with friends. Betrayal at House on the Hill is a tile game that allows players to build their own haunted house room by room, tile by tile, creating a new thrilling game board every time. The game is designed for three to six people, each of whom plays one of six possible characters. Secretly, one of the characters betrays the rest of the party, and the innocent members of the party must defeat the traitor in their midst before it’s too late! Betrayal at House on the Hill will appeal to any game player who enjoys a fun, suspenseful, and strategic game. Betrayal at House on the Hill includes detailed game pieces, including character cards, pre-painted plastic figures, and special tokens, all of which help create a spooky atmosphere and streamline game play.', 'betrayal.jpg', 35.99, '2-4'),
(2, 'Whitehall Mystery', 'October 1888: During the construction of the Metropolitan Police headquarters near Whitehall, which would later be known as Scotland Yard, the remains of a body were found. In September, a severed arm had already been discovered in the muddy shore of the River Thames.\r\n\r\nThere is another murderer roaming the streets of London in Whitehall, amusing himself by spreading the pieces of a poor woman around Whitehall, like some kind of macabre treasure hunt. The identity of this monster and his unfortunate victim are a mystery, the Whitehall Mystery.\r\n\r\nWhitehall Mystery is a refined game of deduction and bluffing set in 1888, in the London of Jack the Ripper. It is a game for two to four players, age fourteen and older. Scotland Yard is hot on the heel of another serial killer, right when Jack the Ripper is active! In the tight network of streets and alleyways, a hunt for a new and mysterious murderer begins.The Jack player wins the game if he is able to complete his crime without being caught. The Investigator players play together, and they win when one of them captures Jack.', 'whitehall.jpg', 29.24, '2-4'),
(3, 'Catan (2015 Edition)', 'Your adventurous settlers seek to tame the remote but rich isle of Catan. Start by revealing Catan\'s many harbors and regions: pastures, fields, mountains, hills, forests, and desert. The random mix creates a different board virtually every game. No two games are the same! Embark on a quest to settle the isle of Catan! Guide your settlers to victory by clever trading and cunning development. Use resource combinations- grain, wool, ore, brick, and lumber-to buy handy development cards and build roads, settlements, and cities. Acquire your resources through trades, cards, or lucky dice (even outside your turn). But beware! Someone might cut off your road or buy a monopoly. And you never know when the wily robber might steal some of your precious gains! ', 'catan.jpg', 36.99, '2-6'),
(4, 'Harry Potter Cluedo', 'DARK FORCES ARE AT WORK… A friend has seemingly vanished. Playing Harry, Ron, Hermione, Ginny, Luna or Neville, you must try to discover WHO did it, WHAT spell or item they used and WHERE the student was attacked. Was it Fenrir Greyback with a Cursed Necklace in the Forbidden Forest? Use the Floo Network to travel faster through the wizarding world... but watch out for unlit fireplaces. When you\'re sure of your facts, go to The Burrow to make your final accusation and win the game!', 'harrypottercluedo.jpg', 24.99, '3-5'),
(5, 'Warhammer 40k Monopoly', '\r\nWarhammer 40k Monopoly\r\nWarhammer 40k Monopoly - Image 1\r\nWarhammer 40k Monopoly - Image 2\r\nWarhammer 40k Monopoly - Image 3\r\nWarhammer 40k Monopoly\r\nin Classic Board Games\r\nRRP £29.99\r\n£28.99\r\nEarn 725 Player Points worth £0.73\r\nEstimated Delivery: \r\n14 March 2019\r\n\r\nMore product information\r\nLimited stock\r\n \r\n1\r\n \r\nAdd to basket\r\nOR\r\n \r\nFree Shipping\r\nPlayer Points Customer Rewards\r\nSafe, secure checkout\r\nEasy, hassle-free returns\r\n Secure payment options.\r\nSecure Payments through Visa\r\nSecure Payments through Mastercard\r\nSecure Payments through PayPal\r\nSecure Payments through American Express\r\n\r\nAdd to Wish List\r\n£Price drop notifications\r\nProduct Description\r\nWarhammer 40k Monopoly\r\nBrave are they who know everything yet fear nothing! The grim darkness of the far future, an era without comfort or hope. The advances of technology and science, common humanity, and simple understanding have fallen by the wayside, replaced by blind hatred and base survival instinct. An eternity of carnage, slaughter and shrill laughter from the cruel Gods lies before you, and those with the gift of foresight say it shall only worsen. But amongst this brutal chaos are tales of courage and heroism. Embrace the cycle of death and birth as you travel through the universe, subjugating locations, Craftworlds, and Forge Worlds with hellish energy to become the most powerful warrior in this dystopian nightmare. ', 'warhammermonopoly.jpg', 28.99, '2-6'),
(6, 'Altiplano: The Traveler', 'A traveler wanders through the South American highlands and brings the inhabitants new ideas from his travels. Anyone who meets him can take advantage of these assets. A public trading point makes it possible to obtain rare goods in exchange for opals. And a variety of fortunes adds even more diversity to life among the mountain ranges in Bolivia and Peru. With Altiplano: The Traveler, the planning of moves in Altiplano becomes more important and accessibility to resources becomes more interactive. Above all, the assets that may be purchased from the traveller open up completely new ways to increase one\'s own wealth. But unforeseen fortunes sometimes demand spontaneous decisions which influence planning. Thus, the drive for success in this inhospitable region turns into a completely new challenge! Who\'s prepared for this? ', 'altiplano.jpg', 17.49, '2-5'),
(7, 'Scythe Encounters', 'In June 2018, Scythe fans were invited to make a design for ONE encounter card using specific art. Jamey reviewed the submissions, selected his favorites (often mixing and matching various submissions), and developed them. Now the Scythe Encounters promo boxed set is a reality! Scythe Encounters is a boxed set of 32 brand-new promo encounter cards. These cards feature a number of innovations in the encounter system. We recommend that you play with them on their own for a few games; after that you can shuffle them into the regular encounter deck. ', 'scytheencounters.jpg', 16.99, '1-7'),
(8, 'Galaxy Trucker', 'Corporation Incorporated, the galactic leader in sewer system construction, is looking for can-do guys and gals to haul materials to remote regions of the galaxy. Must be willing to fend off meteors, smugglers, and pirates.Experience working with aliens a plus. Earn copious cosmic credits with bonuses for speedy delivery. Become a Galaxy Trucker. It\'s loads of fun!The game consists of three rounds. In each round, the players begin by rummaging through the Warehouse, trying to grab the best components and build the best space ship. Once the ships are under way, the players try to avoid snares and obstacles, while grasping financial opportunities, each hoping to be the first to finish with an undamaged ship.It\'s possible that you will end up with an insurmountable debt and finish your days panhandling on the streets of Deneb III, but if Lady Luck should smile upon you, you just might find yourself among the 10 billion richest people in the Galaxy!', 'galaxytrucker.png', 29.99, '2-4'),
(9, 'Risk Game Of Thrones', 'Could you win the Game of Thrones? Now is your chance with the New Risk Game of Thrones Standard Edition board game. Play the classic board game Risk with a twist. Use your favourite characters from the Game of Thrones TV show and try to conquer the realms of men and beyond from Westeros to Essos. Play with friends and family and discover who shall sit on the Iron Throne.', 'riskgot.jpg', 29.99, '2-5'),
(10, 'Carcassonne Revised Edition', 'In Carcassonne, players build the area surrounding this impressive city, one tile at a time. They then place a follower on fields, cities, roads or monasteries in order to score as many points as possible. These followers will become knights, monks, farmers and thieves, depending on where they are placed. No matter their function, the player who will most cleverly use their followers will win the game. ', 'carcassonnerevised.jpg', 28.79, '2-5'),
(11, 'Village', 'Life in the village is hard – but life here also allows the inhabitants to grow and prosper as they please. One villager might want to become a friar. Another might feel ambitious and strive for a career in public office. A third one might want to seek his luck in distant lands.\r\n\r\nEach player will take the reins of a family and have them find fame and glory in many different ways. There is one thing you must not forget, however: Time will not stop for anyone and with time people will vanish. Those who will find themselves immortalized in the village chronicles will bring honor to their family and be one step closer to victory.\r\n\r\nVillage is a game full of tactical challenges. A smart and unique new action mechanism is responsible for keeping turns short and yet still tactically rich and full of difficult decisions. Also unique is the way this game deals with the delicate subject of death; as a natural and perpetual part of life in the village, thoughts of death will keep you focused on smart time-management.', 'village.jpg', 27.99, '2-6'),
(12, 'Village Attacks', 'Village Attacks is a co-operative castle defense game in which players take on the roles of the most infamous creatures of folklore and legend from around the world! Deep in a remote part of the world, you and your monstrous associates have taken up residence in an immense castle. But the local village has had enough of the evil that lies at its door and has decided to lay siege to the castle in an effort to exorcise your wicked taint from the world.\r\n\r\nThe villagers may be weak, but they are not alone! News of your malevolent presence has spread far and wide; hunters and heroes have come from all corners of the globe to vanquish you! Some have come for the fame, others for the glory, and some even for the reward. But they share a single goal; your doom!', 'villageattacks.jpg', 68.49, '2-4'),
(13, 'Untold: Adventures Await', 'Untold: Adventures Await is the customizable storytelling game powered by Rory\'s Story Cubes. Players become the heroes of a thrilling tale that unfolds in under 60 minutes. Think of Untold as your favorite TV series, except rather than just sitting back and watching, you\'re right in the middle of the action!\r\n\r\nEvery game of Untold is an episode of five distinct scenes, each featuring intriguing locales, dangerous threats and shocking plot twists that propel the action toward an epic showdown. Scene Cards and StoryCubes provide the elements of the adventure, while Reaction Cards reveal what happens when the players take action.\r\n\r\nUntold takes collaborative storytelling in a whole new direction, allowing players of all ages to unleash their creativity thanks to a unique game engine that\'s extremely accessible, always unpredictable, and rooted in inspiration. Players can also craft multiple-episode story arcs that will see their characters and their world grow as new challenges arise.', 'untold.png', 20.99, '1-4'),
(14, 'Tiny Epic Galaxies', 'A thirty-minute game of galactic conquest, Tiny Epic Galaxies is driven by an exciting dice-rolling mechanism that rewards thoughtful programming of the results. Players control a home galaxy and a fleet of space ships. As players upgrade their galaxies, they gain access to more ships and more dice. Each turn, a player rolls a set of dice; how many dice are rolled is determined by the level of that player\'s galaxy. Each side of the six-sided die represents a different type of action: Movement, Colony Action, Harvest from Culture Planets, Harvest from Energy Planets, Improve an Economic Influence, and Improve a Diplomatic Influence. After the roll, the player sorts the results of the roll (one selective re-roll is allowed) and organizes the dice in a desired activation order. Each die, in order, is then resolved and the results are immediate, which allows the player to pull-off unseen combos and surprise other players. Other players have the option to copy other player\'s actions...at a cost! As players expand their galaxy by colonizing other planets through economic and diplomatic influence, they gain victory points AND the special powers brought in by those planets! In addition to galaxy upgrades, effective resource management provides luck-mitigating options that can sway the game in a calculated player\'s favor. Whoever achieves the most points from acquiring planets and upgrading their personal galaxy wins! ', 'tinyepicgalaxies.jpg', 21.99, '1-5'),
(15, 'Lazer Ryderz', 'Lazer Ryderz is a trackless racing game for up to 4 players with light push-your-luck, area denial, and strategy elements. Players construct their lazer paths with various pre-formed punchboard pieces that are placed according to speed and desired direction.\r\n\r\nIn Lazer Ryderz, players take on the role of one of four Ryderz as they race to capture all three Prisms needed to charge the Portal to their next destination. The Portal only allows one Ryder to pass through before moving on to a new location in the galaxy, so speed is essential to meet your goal. But the faster a Ryder goes the harder it is to turn, and if a Ryder runs into another player\'s lazer, that Ryder is toast! Who will continue on their quest and who will be left behind?\r\n\r\nWill it be the Galactic Waveryder - the adrenaline-fueled surfer who\'s seeking the next great thrill and most radical solar waves? Or the Lazer Shark - always on the hunt for her next prey as she seeks the fabled Blood Nebula to restart her species? Perhaps the Super Sheriff - greatest of the Law Star Rangers who travels to the outer reaches of the known (and unknown) galaxy to bring the universe\'s criminals to speedy justice? Or will it be the Phantom Cosmonaut - the ghost from a long-distant era whose true quest is a mystery to those he encounters, but with speed that is without question as he moves in the blink of an eye?', 'lazerryderz.jpg', 12.99, '2-4'),
(16, 'Planet Game', 'A world is taking shape in the palm of your hands. Strategically position your continents to form hospitable environments for animal life to develop and try to create the most populated and diverse planet!', 'planetgame.jpg', 26.99, '2-4'),
(17, 'Axis and Allies 1941', 'Five major powers struggle for supremacy. Germany and Japan are aligned against the great alliance of the United Kingdom, the Soviet Union, and the United States. Designed for 2–5 players, the game is set in 1941: The Axis has great momentum and is expanding its conquests in both Europe and Asia. Controlling one of the Axis or Allied powers, you will command both your country’s military forces and its war-time economy. Show that you are a brilliant military strategist by planning your attacks, marshalling your forces into embattled territories, and resolving the conflicts. Victory goes to the side that conquers its opponents on the field of battle and liberates or occupies the greatest cities of the world. Change the course of history in a few short hours! Includes 16 all-new designs such as the P-40 Warhawk, Tiger Tank, AVRO Lancaster, FW-190, IS-2 tank, HMS Hood, He-111, and the Akagi Aircraft Carrier. ', 'axisandallies.jpg', 21.99, '2-5'),
(18, 'Cluedo Sherlock', 'The enigmatic series Sherlock retells the tale of England’s most celebrated detective – and now Sherlock Holmes and Dr Watson’s adventures in 21st century London are the centrepiece for their own version of the classic game of Cluedo! Was it Moriarty with the gun on the roof of St Barts? You’ll need all your wits about you to find out! ', 'cluedosherlock.png', 22.99, '2-6'),
(19, 'Jamaica', 'How else could the honourable Henry Morgan celebrate his 30 years of governing Jamaica than with a race around the island?\r\n\r\nGathering every Pirate and Buccaneer around, the \"Great Challenge\" will be a memorable race. Not to mention - what\'s better than a race where you can earn some booty and shoot at your opponents? The \'\'Great Challenge\'\', that\'s what!\r\n\r\nThe goal is to sail around the island of Jamaica as fast as possible, while gathering the goods required: gold for port taxes, powder for naval battles and food to eat while out on the high seas. Each time the pirates meet, they will have to fight to try and steal the contents of each other\'s holds (and maybe pawn off a chest full of cursed gold at the same time). And so, hoist up the sails and head towards Port-Royal. May the fastest and richest win!', 'jamaica.jpg', 26.09, '2-6'),
(20, 'Stranger Things Monopoly', 'Stranger Things Monopoly', 'stm.jpg', 25.64, '2-6'),
(21, 'Onitama', 'Onitama is a two-player, perfect information abstract game with a random starting set-up. On a 5x5 board, both players start with five pawns on their side, with the main pawn in the middle. Each player has two open cards that each display a possible move for any of his pieces. There is a fifth card that cannot be used by either player. On a player\'s turn, he chooses one of his cards, moves one of his pieces according to the chosen card, then replaces the card he used with the fifth card. The other player then chooses one of his cards, moves accordingly, and exchanges that card with this fifth card — which is, of course, the card the first player just used. Moving onto one of the opponent\'s pawns removes that pawn from the game. Taking the opponent\'s main pawn, or moving your main pawn into your opponent\'s main pawn\'s starting space, wins you the game.', 'onitama.jpg', 24.99, '2'),
(22, 'Game Of Thrones Cluedo', 'There\'s a mystery to solve in Westeros and beyond, in Game of Thrones Cluedo! Will you identify the assassin in Meereen or uncover the treacherous pot in the Red Keep? With 12 characters and beautifully detailed castle shaped holders, and special weapons, this is Cluedo like you\'ve never played before, The ultimate Game of Thrones.', 'gotcluedo.jpg', 25.99, '2-6'),
(23, 'Condottiere', 'It is 13th century Italy. Trade is flourishing between the city-states and the Levant. Venice, Florence, and Genoa are all bursting with wealth. However, each city-state is also plagued with a weak national army, leaving them defenseless against invasion from their envious neighbors. Enter the Condottiere. As veteran English soldiers returned from the Crusades, Italy found itself with an influx of desperate and capable men. These hired swords were contracted to fight for individual city-states by an agreement known as a condotta. The most elite of these men were the mercenary leaders known as the Condottiere. The object of Condottiere is to acquire four connected provinces in renaissance Italy. To do this players auction off different provinces on the board and bid on these provinces with a hand of cards representing mercenaries, seasons, scarecrows, and political figures. However, unlike standard auctions in which only the highest bidder loses their bid, in Condottiere every player loses their bid. Players are, in effect, bidding the number of troops they are willing to lose in order to win a province. However, several special effect cards shake the contests up and keep the players guessing. ', 'condottiere.jpg', 26.99, '2-6'),
(24, 'Roll for the Galaxy', 'Roll for the Galaxy is a dice game of building space empires for 2-5 players. Your dice represent your populace, whom you direct to develop new technologies, settle worlds, and ship goods. The player who best manages his workers and builds the most prosperous empire wins! This dice version of Race for the Galaxy takes players on a new journey through the Galaxy, but with the feel of the original game.', 'rollforthegalaxy.jpg', 48.49, '2-5'),
(25, 'XCOM', 'In XCOM The Board Game, the alien invasion has begun. Early encounters have only served to prove that the worlds militaries are hopelessly out-gunned. Panic leads to riots and governments struggle to maintain any control. Human civilization is on the brink of collapse.\r\n\r\nAs the department heads of XCOM you and your friends must succeed where the worlds militaries have failed. You lead the elite members of an international, military organisation which is funded by a secret coalition. It is your job to destroy UFOs, research Alien technology uncover the alien invasion plan and find some way to turn back the alien invaders. You must do this all while preventing the collapse of the governments that secretly fund your organisation. \r\n\r\nParis has fallen. New York is a pile of rubble spilling into the Atlantic. Alien attacks against Nanjing and Changzhou prompt widespread panic throughout the streets of Shanghai. Defense satellites detect UFOs in orbit over Mexico, Russia, and Brazil. Military responses have proven ineffectual. Fear and anxiety lead to widespread riots. Human civilization stands upon the brink of collapse… You are humanity’s last hope. In XCOM: The Board Game, you and up to three friends assume the roles of the leaders of the elite, international organization known as XCOM. It is your job to defend humanity, quell the rising panic, and turn back the alien invasion. Where the world’s militaries have failed to stand against the alien invaders, you must succeed. To do so, you must make strategic use of the resources available to you. You must launch Interceptors to shoot down alien UFOs, assign soldiers to key missions, research alien technology, and use that technology to defend your base, all while you try to keep the world from collapsing just long enough that you can coordinate one final mission to repel the invaders for good. ', 'xcom.jpg', 42.99, '1-4');

-- --------------------------------------------------------

--
-- Table structure for table `future_games`
--

CREATE TABLE `future_games` (
  `id_fg` int(4) NOT NULL,
  `name` varchar(35) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `future_games`
--

INSERT INTO `future_games` (`id_fg`, `name`, `description`, `image`) VALUES
(1, 'Seafall', 'Adventure awaits on the high seas! The world is emerging from a dark age where history and knowledge were lost. The great provinces have just begun reestablishing seafaring technology. Wealth and fame await leaders who are cunning and brave. Explore the coastal islands. Discover lost civilizations. Sail the open sea in search of new lands. Uncover long buried secrets. Sail until the sea falls off the edge of the world!] SeaFall is a ‘Legacy’ board game designed by board game industry veteran Rob Daviau. A Legacy game is a concept developed by Rob. The idea behind a Legacy game is that the game ‘remembers’. As players play a Legacy game, the game board changes, cards are modified and sealed packs are opened revealing twists and turns in an epic storyline. Players will watch as their actions have permanent effects on the game world. SeaFall is the third Legacy game designed by Rob Daviau. It was preceded by Risk Legacy and Pandemic Legacy Season 1. Both were important and very successful games that sent ripples through the board game community for their innovation and scope. Now, for the first time ever, instead of adding Legacy mechanics to an existing game, Rob has built a world and game around the Legacy idea. ', 'seafall.jpg'),
(2, 'Mysterium', 'In Mysterium, a reworking of the game system present in Tajemnicze Domostwo, one player takes the role of ghost while everyone else represents a medium. To solve the crime, the ghost must first recall (with the aid of the mediums) all of the suspects present on the night of the murder. A number of suspect, location and murder weapon cards are placed on the table, and the ghost randomly assigns one of each of these in secret to a medium. \r\n\r\nEach hour (i.e., game turn), the ghost hands one or more vision cards face up to each medium, refilling their hand to seven each time they share vision cards. These vision cards present dreamlike images to the mediums, with each medium first needing to deduce which suspect corresponds to the vision cards received. Once the ghost has handed cards to the final medium, they start a two-minute sandtimer. Once a medium has placed their token on a suspect, they may also place clairvoyancy tokens on the guesses made by other mediums to show whether they agree or disagree with those guesses', 'mysterium.jpg'),
(3, '7 Wonders Duel', 'In many ways 7 Wonders: Duel resembles its parent game 7 Wonders as over three ages players acquire cards that provide resources or advance their military or scientific development in order to develop a civilization and complete wonders. What\'s different about 7 Wonders: Duel is that, as the title suggests, the game is solely for two players, with the players not drafting card simultaneously from hands of cards, but from a display of face-down and face-up cards arranged at the start of a round. A player can take a card only if it\'s not covered by any others, so timing comes into play as well as bonus moves that allow you to take a second card immediately. As in the original game, each card that you acquire can be built, discarded for three coins, or used to construct a wonder. Each player starts with four wonder cards, and the construction of a wonder provides its owner with a special ability. Only seven wonders can be built, though, so one player will end up short. Players can purchase resources at any time from the bank, or they can gain cards during the game that provide them with resources for future building; as you acquire resources, the cost for those particular resources increases for your opponent, representing your dominance in this area. A player can win 7 Wonders: Duel in one of three ways. Each time that you acquire a military card, you advance the military marker toward your opponent\'s capital, giving you a bonus at certain positions. If you reach the opponent\'s capital, you win the game immediately. Similarly, if you acquire any six of seven different scientific symbols, you achieve scientific dominance and win immediately. If neither of these situations occurs, then the player with the most points at the end of the game wins.', '7wondersduel.jpg'),
(4, 'Lords of Hellas', 'Enter the Dark Ages of Greece, ruled by mighty Gods wielding advanced technology. Control asymmetric heroes and choose your path to victory, either by strategic control or adventure style monster hunting and quests.\r\n\r\nBuild majestic multi-part monuments of Gods on the board and unlock their mighty powers that will help you win and survive the raids of monsters, who travel through land and rain havoc.\r\n\r\nIn Lords of Hellas, you control an asymmetric hero, developed by increasing his 3 basic statistics and gathering artifacts. The main statistics are:\r\n\r\nLeadership that will help you to move your armies\r\nStrength that will empower you to successfully hunt for monsters\r\nSpeed that will make your hero move faster\r\nThrough the game you can choose from various actions and influence the game thanks to the mighty monuments of base Gods: Zeus, Athena, and Hermes. You need to strategically move your armies and hero as well as manage your actions in order to win. There are also random events, where players need to vote or take action together.\r\n\r\nPlayers can win in various ways: by controlling area, temples, or slaying monsters that are wandering through the map and interfere in various ways. Once any victory condition is met, the game ends (there is no point system).', 'lordsofhellas.jpg'),
(5, 'Fallout Board Game', 'Softworks, each Fallout scenario is inspired by a familiar story from the franchise. Survivors begin the game on the edge of an unexplored landscape, uncertain of what awaits them in this unfamiliar world. With just one objective to guide them from the very beginning, each player must explore the hidden map, fight ferocious enemies, and build the skills of their survivor as they attempt to complete challenging quests and balance feuding factions within the game. As they advance their survivors\' stories, players come across new quests and individual targets, leading them to gain influence. Who comes out ahead depends on how keenly and aggressively each player ventures through the game; however, if a single faction is pushed to power too quickly, the wasteland will be taken for their own, and the survivors conquered along with it.', 'fallout.jpg'),
(6, 'Imhotep', 'In Imhotep, the players become builders in Egypt who want to emulate the first and best-known architect there, namely Imhotep. Over six rounds, they move wooden stones by boat to create five seminal monuments, and on a turn, a player chooses one of four actions: Procure new stones, load stones on a boat, bring a boat to a monument, or play an action card. While this sounds easy, naturally the other players constantly thwart your building plans by carrying out plans of their own. Only those with the best timing — and the stones to back up their plans — will prove to be Egypt\'s best builder. ', 'imhotep.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_u` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_u`, `username`, `email`, `first_name`, `last_name`, `password`, `role`, `status`, `registration_date`, `token`) VALUES
(2, 'AnaNeith', 'anabatinic111@gmail.com', 'Ana', 'Neith', '$2y$10$Ks8Lmcgw4dEnxmMc21LyQuLjQ.4uCb6TKE2BU6wf5l4nf6UiR6se.', 0, 0, '2019-03-17 13:33:39', '0'),
(3, 'Test', 'test@gmail.com', 'Test', 'Testt', '$2y$10$jjZeUZclKyTQSXZKPBTLW.eCyHbp7yXiiPibeP121UQeHatM.P05C', 0, 0, '2019-03-17 14:05:23', '0'),
(6, 'Teseee', 'wweaseas@gmail.com', 'Tesee', 'Eesawe', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 0, 0, '2019-06-14 11:58:34', '0'),
(7, 'Testttt', 'test1@gmail.com', 'Testt', 'Testt', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 0, 0, '2019-06-14 12:23:04', '0'),
(11, 'Test1223', 'test123@gmail.com', 'Tesee', 'Eesawe', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 0, 0, '2019-06-14 12:27:05', '0'),
(12, 'Tester', 'wweasea1s@gmail.com', 'Testter', 'Testter', '453cf2486f88c411f9ad608b563aef965cedb15d', 0, 0, '2019-06-14 12:28:19', '0'),
(16, 'Teseeet', 'tester@gmail.com', 'Testtert', 'Testttt', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 0, 0, '2019-06-14 12:34:16', '0'),
(17, 'Teseee1', 'tester1@gmail.com', 'Tesee', 'Tester', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 1, 0, '2019-06-14 12:35:18', '0'),
(18, 'Testing', 'testinguser@gmail.com', 'Test', 'Inguser', 'dc724af18fbdd4e59189f5fe768a5f8311527050', 1, 0, '2019-07-01 13:39:11', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boardgame`
--
ALTER TABLE `boardgame`
  ADD PRIMARY KEY (`id_bg`);

--
-- Indexes for table `future_games`
--
ALTER TABLE `future_games`
  ADD PRIMARY KEY (`id_fg`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_u`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boardgame`
--
ALTER TABLE `boardgame`
  MODIFY `id_bg` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `future_games`
--
ALTER TABLE `future_games`
  MODIFY `id_fg` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_u` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
