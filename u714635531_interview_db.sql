-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2023 at 05:32 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19479481_interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidate_srno` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(3) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `pannel` int(3) NOT NULL,
  `interviewstatus` varchar(2) NOT NULL,
  `response_srno` int(11) DEFAULT NULL,
  `photo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidate_srno`, `name`, `year`, `branch`, `pannel`, `interviewstatus`, `response_srno`, `photo`) VALUES
(1, 'Bharti Dinkar Pawar ', 'SY', 'CSE', 1, 'i', 1, 1),
(2, 'Manasi Govind Katare ', 'SY', 'CSE', 3, 'i', 2, 1),
(3, 'Nayan Rajaram Khandekar ', 'TY', 'Mechanical', 4, 'i', 3, 1),
(4, 'Prem Shinde ', 'SY', 'Mechanical', 5, 'i', 4, 1),
(5, 'Dhanwantari Dhananjay Desai', 'TY', 'Biotech', 3, 'i', 5, 2),
(6, 'PRAJWAL PITAMBAR KHANDAGALE', 'SY', 'Mechanical', 2, 'i', 6, 1),
(7, 'Dhruva Ramesh Makwana ', 'SY', 'CSE', 4, 'i', 7, 2),
(8, 'Mohammadsaad Hidayat Jamadar ', 'SY', 'CSE - AIML', 3, 'i', 9, 3),
(9, 'Sanika Shrikant Joshi ', 'FY', 'CSE', 1, 'i', 10, 2),
(10, 'Ankita Tanaji Yadav', 'FY', 'CSE - Data Science', 2, 'i', 11, 2),
(11, 'Akanksha Mahesh Arsekar ', 'FY', 'CSE - AIML', 5, 'i', 12, 2),
(12, 'Shubham Shivaji Lamb', 'TY', 'CSE', 2, 'i', 15, 3),
(13, 'Nandai Narayan Katkar', 'SY', 'CSE', 4, 'i', 17, 3),
(14, 'Sakshi Chandrakant Ghodake', 'SY', 'CSE', 1, 'i', 18, 3),
(15, 'Rutuja Rahul Padekar ', 'FY', 'CSE - Data Science', 5, 'i', 19, 3),
(16, 'Sakshi Mahaveer Patil', 'FY', 'CSE', 2, 'i', 20, 4),
(17, 'Prachi Mahavir Patil', 'FY', 'CSE', 4, 'i', 21, 4),
(18, 'Karim Shikalgar', 'FY', 'Mechanical', 2, 'i', 22, 5),
(19, 'Vivek Sawant ', 'FY', 'CSE', 4, 'i', 23, 5),
(20, 'Harshdeep Bangar ', 'TY', 'Civil and Environmental', 5, 'i', 24, 4),
(21, 'Shravani sudhir more ', 'TY', 'ENTC', 3, 'i', 25, 4),
(22, 'Surabhi Sachin Kadam ', 'FY', 'CSE - Data Science', 1, 'i', 27, 4),
(23, 'Shruti Patil', 'FY', 'Biotech', 1, 'i', 28, 5),
(24, 'Samarth Sandip Desai', 'FY', 'CSE - Data Science', 1, 'i', 30, 6),
(25, 'Sanika Sanjay Magadum', 'FY', 'CSE', 5, 'i', 31, 5),
(26, 'Sonam Pradip Pawar ', 'FY', 'ENTC', 2, 'i', 32, 6),
(27, 'Vaishnavi Pawar ', 'SY', 'CSE', 3, 'i', 34, 5),
(28, 'Siddhi Anil Patil', 'FY', 'ENTC', 3, 'i', 35, 6),
(29, 'Vinayak', 'TY', 'CSE', 1, 'i', 36, 7),
(30, 'Anjali Halave', 'FY', 'Biotech', 5, 'i', 37, 6),
(31, 'Rohan Mane', 'FY', 'Civil', 2, 'i', 38, 7),
(32, 'Rajvardhan Govind Patil ', 'FY', 'CSE - Data Science', 4, 'i', 39, 6),
(33, 'Sakshi Bajirao Kupale', 'TY', 'ENTC', 5, 'i', 40, 7),
(34, 'Aishwarya Sanjay Pavane.', 'FY', 'CSE', 4, 'i', 42, 7),
(35, 'Siddhi Yadav', 'FY', 'CSE - AIML', 3, 'i', 43, 7),
(36, 'Ajay Jaysing Patil ', 'FY', 'CSE', 4, 'i', 44, 8),
(37, 'Yash Kurunkar ', 'SY', 'Civil', 2, 'i', 45, 8),
(38, 'Pranav Chavan ', 'FY', 'ENTC', 2, 'i', 46, 9),
(39, 'Onkar Mane', 'SY', 'CSE', 5, 'i', 47, 8),
(40, 'Riya Babasaheb Patil ', 'FY', 'CSE', 1, 'i', 48, 8),
(41, 'Bhavik Shinde', 'TY', 'Civil and Environmental', 1, 'i', 49, 9),
(42, 'Atharv Patil', 'TY', 'Civil and Environmental', 3, 'i', 50, 8),
(43, 'rashmi ashtekar', 'TY', 'Civil and Environmental', 3, 'i', 51, 9),
(44, 'Tejaswini Ashok Bhosale', 'SY', 'Civil', 3, 'i', 52, 10),
(45, 'Rohit Sunil Shamkuvar', 'TY', 'Mechanical', 5, 'i', 53, 9),
(46, 'Dhanashri Gorakhnath Kumbhar ', 'TY', 'Electrical', 4, 'i', 54, 9),
(47, 'Monika manik Bhosale ', 'TY', 'Electrical', 4, 'i', 55, 10),
(48, 'Nitish Prashant Khodbole ', 'TY', 'Civil and Environmental', 5, 'i', 56, 10),
(49, 'Vishwajeet Sutar ', 'FY', 'Mechanical', 5, 'i', 57, 11),
(50, 'Samruddhi Sanjay Bhole ', 'TY', 'CSE', 1, 'i', 58, 10),
(51, 'Sushrut Shelake', 'SY', 'Biotech', 2, 'i', 59, 10),
(52, 'Shruti Chavan ', 'SY', 'ENTC', 3, 'i', 60, 11),
(53, 'Shivdeep gajanan gawande', 'TY', 'Biotech', 2, 'i', 61, 11),
(54, 'Akhil Tamgaonkar ', 'FY', 'CSE   - AIML', 4, 'i', 62, 11),
(55, 'Aditi Uttam Landage', 'TY', 'Electrical', 1, 'i', 63, 11),
(56, 'Arya Nilesh  Kumbhar ', 'FY', 'CSE', 5, 'i', 64, 12),
(57, 'Karuna Koshti', 'TY', 'Electrical', 1, 'i', 65, 12),
(58, 'Sarita Uttare', 'FY', 'Biotech', 2, 'i', 66, 12),
(59, 'Sanchita Shrivas ', 'FY', 'Biotech', 4, 'i', 67, 12),
(60, 'Sahil Rajendra Bavdhankar ', 'TY', 'Mechanical', 3, 'i', 68, 12),
(61, 'Dhruval. Ramesh. Makwana', 'SY', 'CSE', 6, 'i', 8, 1),
(62, 'Anushka Jadhav ', 'FY', 'Civil and Environmental', 6, 'i', 33, 2),
(63, 'Abhijeet Chavan', 'FY', 'ENTC', 6, 'i', 14, 3),
(64, 'Swaroop Anand Pendse', 'TY', 'CSE', 6, 'i', 41, 4),
(65, 'Kalyani Vatharkar', 'SY', 'Mechanical', 7, 'i', 26, 1),
(66, 'Ahilya sarnaik ', 'SY', 'CSE - AIML', 7, 'i', 29, 2),
(67, 'Shrimanyu vankudre', 'FY', 'CSE - AIML', 7, 'i', 13, 3),
(68, 'Prajwal Prabhakar Thombre ', 'FY', 'CSE', 7, 'i', 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `completion`
--

CREATE TABLE `completion` (
  `p1` int(2) NOT NULL,
  `p2` int(2) NOT NULL,
  `p3` int(2) NOT NULL,
  `p4` int(2) NOT NULL,
  `p5` int(2) NOT NULL,
  `p6` int(2) NOT NULL,
  `p7` int(2) DEFAULT NULL,
  `start` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `completion`
--

INSERT INTO `completion` (`p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `start`) VALUES
(1, 1, 1, 1, 1, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_srno` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_srno`, `username`, `password`) VALUES
(1, 'pannel1', 'f5a0ed69e1b5b44ae1bfa679a7457b0a'),
(2, 'pannel2', '177056aedf13c551f2d7ae2640012c64'),
(3, 'pannel3', 'c539962eaede11b0cabff048b397e5ff'),
(4, 'pannel4', '702ea64c2b920af938ed4c5e06e3b4b5'),
(5, 'pannel5', '58ee174f304e19066fffff1c30c7022a'),
(6, 'fullpannel1', 'f5a0ed69e1b5b44ae1bfa679a7457b0a'),
(7, 'fullpannel2', '177056aedf13c551f2d7ae2640012c64'),
(8, 'waitingroom', 'cb05cab65afefab8fd3831d92cfc68be'),
(9, 'admin', 'b82a9a13f4651e9abcbde90cd24ce2cb');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `response_srno` int(11) NOT NULL,
  `q1` varchar(200) NOT NULL,
  `q2` varchar(400) NOT NULL,
  `q3` varchar(800) NOT NULL,
  `q4` varchar(800) NOT NULL,
  `q5` varchar(500) NOT NULL,
  `q6` varchar(400) NOT NULL,
  `q7` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`response_srno`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`) VALUES
(1, 'Responsible and passionate about work ', 'Documentation, Poster Designing, Handling Social Media, Public Speaking, Leadership', 'Problem-solving,positive attitude,team work, strong communication skills, Time management.', 'Coding, because coding can help to change the world.', 'Pen\n1.The pen gives life to words that are derived from their mind.\n2.Pen is very important in the lives of students as we write and learn through it. \n3.it is good tool to express our views about anything \n4.writing with pen helps our mind learn faster.\n5.putting a pen to paper is helpful in memory improvement.', 'Yes', 'I got award in 9th class.i got gold medal in tug of war.I completed three internship from aicte platform and one from Intershalla.'),
(2, 'Sparkling.', 'Documentation, Poster Designing, Handling Social Media, Leadership', 'I would like to learn more about Leadership skills and along with it would like to develop more skills related to public speaking and grooming myself with different skills.\nAnd I would like to be a part of this team and give my best to bring the team\'s name up and I would give my 100% for team\'s work. ', 'If a given a chance I could teach about\n1. Basics of drawing subjects that are taught for elementary and intermediate drawing exams.\n2.Anything related to colour and painting .\n3.About software and technology, I can teach them about HTML and CSS for web page development. \n4. For graphical animation I can teach them how to use SCRATCH software.', 'Paper.\n\nPaper are basically a thing on which we write are thoughts,information related to any thing.\nPapers have now became the integral part of any humans life because on daily basis people come in interaction with it.\nImportance of Paper is known by writer who writes his thoughts on it. \nAs we are aware that papers are made by cutting of trees so one should not waste Paper at any cost! ', 'Yes', 'I have achieved B grade in Elementary and Intermediate Drawing Examination.\nSuccessfully completed Web development workshop with a certificate.'),
(3, 'Peaceful ', 'Poster Designing, Handling Social Media, Public Speaking', 'I wanna learn how to work in team, how to face crowd, I would like to contribute my technology skills, time & soul in all activities ', 'Gardening, Navigation, how to use internet on learning . ', 'I chose a pen : Pen is a Lifeless Plastic object it have ink Rifel and pointer to write on paper, wall etc. But beside the fact lifeless I kinda think it\'s one of the wonders of Human being. Pen can write down the all feelings ,emotions that are sealed in human that they can\'t say by mouth. Pen  can also become Bridge in any relationship. Pen Suck all the sorrow,love,hatred,happiness and all write down on paper. With the diff colors it can make someones life colorful like rainbow. ', 'No', 'I am not lost , i am stress free , came back from dark, survive the pandemic '),
(4, 'Good character', 'Handling Social Media, Public Speaking, Leadership', 'I would like to learn the bonding between the team members.\nYou all listen each other and then make a decision.\nTeam work.\n', 'I can teach him/her:\n1-studies\n2-sports\n3-to be confident \n4-to identify his/her skill and make it best\n5-About personality development \n6-To be innovative \n7-To respect others & many more', 'With the help of pen we can able to write,sign,calculation etc.\nBut what if paper is not there to write, if there is no exist of paper then there will be no exist of pen.\nWe need paper to write,but to write we need pen.\nSo,It is not about PEN OR PAPER it is about PEN AND PAPER', 'Yes', 'I had played national level in football.\nI had work experience in workshops.'),
(5, 'Sincere', 'Documentation, Poster Designing', 'I want to learn team management, organising different events, etc.', 'I will teach some basic knowledge about spainsh language.', 'I will choose Paper, Because there can be a replacement for a pen but not for a paper, paper is very useful in many important things.', 'No', 'I participated in running and singing competition and got first price'),
(6, 'Artistic', 'Public Speaking, Leadership', 'I am impressed from the first induction programme was arranged by team maverick.I want to learn all things like:\n●what is unity--its nothing but maverick.\n●How to Grow towards success with other teammate\'s.\n●developing english speaking.\n●Thinking out of box.\n●Develping Leadership & team management skills.\nBODHANTRA is one of the great experience with team maverick.\n\nFor all above development\'s I need to work on lot of things with maverick.so as a part of maverick I can to do all for team maverick.\n\n', 'Skill-How to handle our mind in every situations and to how to Conclude with any problem.\n', 'I will choose Paper,because we can print on paper with the help of printer.But we can\'t use pen in proper way if we dont have proper paper to write.', 'Yes', 'Chess Regional\nJnv student\n'),
(7, 'Active ', 'Poster Designing, Public Speaking', 'Spontaneous responding , teamwork \n', 'I will able to teach Speaking skill, detailing about animation. ', 'The beautiful , memorial message or word is written By pen  . When it is written we read it and when we read it either we nail the message and change the our point of view.  One pen can change one\'s life make him the king or it can tarnish you like ash.  .one pen can take u to ur fantasy to your real whole word. It can connect you with many things, people. I would like to keep it short.  My ans is pen. ', 'No', 'Genis book world record in grp(classical dance). '),
(8, 'Open-minded', 'Documentation, Public Speaking, Leadership', '-How to be an innovative person.\n-How to work with team together.\n-confidenty able to share my ideas regarding the topics. ', 'I would like to teach them:\n- how to face real life problems .\n-To share a detailed knowledge about the topics which will help them throughout there jounery of life and in the society.\n', 'In my opinion pen and paper are both the necessary part . As we can keep many of the memory written hiding there.As time goes we once again come across i t and smile on those days where we were silly. And which also  help\'s to deepen one\'s depth of the relationship too. A paper and pen can change once life forever. As eg \'Malala Yousafzai \'. She changed whole world by making correct use of paper and pen and representing the 10000 of voice of children which are struggling today. I would like to c', 'No', 'I hold the geniune book of world record in bharatnatyam. '),
(9, 'Funny programmer😅', 'Documentation, Poster Designing, Handling Social Media', 'Leadership, frequently speaking and Team work and improve communication skill', 'Any computer skills and basics ', 'I think Pen is mightier than the sword which signifies that writing is a powerful tool than violence.\nBesides I love writing it\'s like my hobby...', 'Yes', 'I have achieved 1st milestone in Google cloud facillator program'),
(10, 'Topper ', 'Documentation, Poster Designing, Leadership', 'You all are very helpful. I learned how to develop skill, some persons have skills but because of low confidence they are not show their skills,talent but you all are showing how to develop ourselves.I am also in this type. thank you team mavericks for boosting my confidence.\nIn mavericks,their are many fun activities also I enjoy all this that show how to enjoy things apart form college,submission, exams,etc.\nWith the help of my knowledge, skills I contribute for team mavericks', 'I work on the skill which he/she has.I want to show there skills. Because I think 9 year old child want to develop skill. Studies are important but apart for this skill development is very important to built personality. ', 'Both are very important. They are dependent on each other.but I choose Pen.Pen is thing that no need of paper,with the help of pen we write anywhere like on hands,shirts,etc.If any person unable to talk with the help of pen they describe their feelings.', 'Yes', 'I participated in dance competition when I was in 7th standard.This was a group dance and we won it with 1st rank.'),
(11, 'Honest', 'Public Speaking', 'Public speaking All the things that I am able to do for the team', 'How to take proper usage of technology .How to improve our skills and what is importance of it.', 'Pen: Pen indicates the  power of writing.The Great ideas are transfer through  writer\'s pen.on that views People can think and express their thoughts on paper .with the help of pen one has to communicate through their writing to understand heart of People.', 'Yes', '2nd prize in science Quiz competition ,In handwriting,sports'),
(12, 'Self confident', 'Documentation, Handling Social Media', 'Leadership, cooperation,coordination,trust', 'Kids can learn coding through apps like osmo,kidlo,tynker and I would I to teach them how to use it and make use of it', 'Pen- pen is a simple writing instrument.Its purpose is for writing or drawing.There are many types of pen.Though there are many technologies invented but the use of pen is undispensible.If you want to change the world just puch up a pen and start writing.', 'Yes', 'Had been selected for camp of IISER at Pune'),
(13, 'Passionate', 'Leadership', 'Learn the way the club works\nWant to contribute in a way the club wants\nHosting the shows and managing the events\n', 'To improve and have command on english, time management, sports', 'Actually Both are inter dependent on each other let for eg I choose a paper , paper is of no use if there is nothing written on it\nFor eg, I choose a pen , pen is of not use if paper is not available\nSo both pen and paper are really important', 'Yes', '1)WAS SELECTED FOR AN EDUCATIONAL TOUR TO NASA\n2)HAVE BEEN TO NATIONAL LEVEL FROM NCC\n3) AWARDED WITH SCHLORSHIPS\n4)BEEN AT DISTRICT LEVEL AT SPORTS EVENTS'),
(14, 'Also you can choose one word for me which is better to say or hearing...😁😂', 'Documentation, Public Speaking, Leadership', 'I want to learn nothing special skill but I want to learn all type of skills which are present in our team...😛And I will also try to learn that type of skills which are helpful in engineering and also whole feature...', 'How to made aeroplane , water Boats ,kite using newspaper or notebook page.\nHow to catch ,throw ,kicking...\nHow to talk with olders/Elders...\nI will teach  how to swimming , cycle\nIn mathemaths, i will teach addition , substarction, multiplication  , division\nAlso how to painting 🎨', 'Pen:\n--An average pen can write about 45,000 word before running out of ink.\n--\'Nanofountain probe\' is the smallest pen in the world...\n--Ball Pen , Gel Pen , ink pen are the most used for writing...\n--When you give a person a pen ,the first thing that they will write their own name...Well at least they will in 95% of the cases....\n--In the gel pen it has transparent gel present in the end of ink...\nThis transparent gel is called as folower..this is the type of grease which is used to stop evapo', 'Yes', 'Best Captain Award (school...)\nCOS of the SERIES'),
(15, 'Shubham', 'Public Speaking', 'Helping hands', 'Self Defense', 'Pen is used to write the things which will stay for longer time. It is the medium through which we can expressed our feelings without knowing any other person. It is such a object by which we can give new ideas, speedup our mind to invent new things present in universe. ', 'No', '2nd place in National level Kick boxing '),
(16, 'Polite ', 'Public Speaking, Leadership', 'I wanna develop my communication skills, leadership,team-game ability and I would like to contribute my best experience I have in team work.', 'I can teach him/her all the mobile features and their ethical uses.And also will try my best to tell the wrong uses.', 'Ofcourse pen,in my opinion writing makes our brain open to the knowledge we are gathering\nthere\'s lot of concentration enhancement due to writing.And I do study the same way😁', 'Yes', 'First in teaching compitition in school\nThird in debate competition \nRunner up in kho-kho team-game\nFirst in school in 10th ssc'),
(17, 'Communication skills', 'Leadership', 'Team work, unity. ', 'Reading, writing, speaking. ', 'Paper is something on which we, keep it with us, make the notes, complete the subbmisions, give the paper and everything is done on that paper. Papers are obtained from trees. ', 'Yes', 'In school days for various competition. '),
(18, 'I have interested in cultural activities like dancing,speaking.i like to help needy people.i like to participate all activities related functions.', 'Documentation', 'Lots of knowledge with improving my confidence and communication skills.', 'Dancing', 'Bolte work on nut;pen work on paper.A writer who wait for ideal conditions under which to work will die without putting a word on paper', 'Yes', 'Dancing first prize'),
(19, 'Dynamic , independent ', 'Public Speaking, Leadership', 'Firstly  I want to develop the skill of public speaking and  leadership. Also I want be a part of a great team ', 'How to make pdfs ,Basics of python ', 'I ll choose Pen as Pen has the great power of changing the world .And it is the pen by which history is written .Even if it is just a small object it has deep meaning.', 'Yes', 'NDA written exam  qualified\nKarate Green belt '),
(20, 'Creater ', 'Poster Designing', 'Would like to contribute my Management skills...want to learn some stage daring from your team members..', 'Public speaking is most important in today\'s life.If I got a chance I would like to teach 9 year old guy how to interact with people ', ' Power of pen is much larger than the paper.Power of pen brings inspiration, motivation. But without paper pen is useless..so I think its difficult to choose between pen and paper.', 'Yes', 'Got a CSE in kitcoek.This is the biggest achievement I have ever got 😁And blessed'),
(21, 'Prachi means the first ray of sun ,East direction. &according to my all friends,relatives \'prachi is very intelligent and sensible\'...☺', 'Poster Designing, Public Speaking, Leadership', 'I would like to learn team-work ,soft skills etc. & I\'d like to help in designing work,script writing,public speaking ,etc.', 'I will be able to teach crafting,human values& mathematics...,etc', 'Firstly,pen & paper have same weightage...But I think pen is sufficient to tell our feelings...the power of writing can change the mind of people so writing is important..& for that we need PEN...', 'No', '1)Awards in Drawing Compititions , \n2)C.O.S. of Bodhantra 2k22 ,\n3)many certificates & rewards I got in academics from school ...'),
(22, 'Jugadu', 'Poster Designing, Public Speaking, Leadership', 'I would like to Work for our team that I can improve my professional skills. ', 'Software -Microsoft word, Excel,PowerPoint,Auto Cad, VN, Lightroom ', 'I choose Pen, because the power of Pen is not in Sword. We are Not introduced to many Quotes many Novels many Books & many more, because that is not finite. It is infinitely more than we thought. ', 'No', '1.Rajshri Shahu Maharaj Award - Awarded by Samajkalyan Office ,Kolhapur\n2.Cracked NMMS Examination'),
(23, 'Versatile ', 'Public Speaking, Leadership', 'Skills I want to learn,\n-Communication skills\n-Confidence \n-Time management\n\nContribution,\n\n-Flexibility\n-Team management \n\n', 'I would like to teach him/her Guitar lessons.', 'As I believe in better environment,so,my choice would be paper,because it is made up of wood ie. naturally.It is also easy to recycle.It can be easily decomposed by bacteria.\n\nPen is made of plastic.So,Recycling is difficult.', 'No', '1)I did more than 200 concerts in Kolhapur with my guitar teacher.\n2)Gold medalist in school for Athletics event & represented and participated in Nagpur Athletics event(CBSE Clusters)held by every cbse school.\n3)Gold medalist in NSO(National Science Olympiad) in school.\n4) Performed a concert in front of great actor Anil Kapoor.'),
(24, 'Optimistic ', 'Documentation, Poster Designing, Handling Social Media', 'I Want to learn that how to do works with a good team spirit. And I would like to contribute my skills and knowledge to the team.', 'I can a 9 year old that how to use the basic things of A computer. Or I can also teach some maths tricks to them which will help them in studying maths.', 'Pen.\nI choose pen because It can be referred to anything which can be used to write. And it can be made of anything. But to make paper we have to harm our environment by cutting trees.', 'Yes', 'I Received 2nd rank in the pbl activity held in last semester.'),
(25, 'Multi talented ', 'Poster Designing, Handling Social Media, Leadership', 'Public speaking and more of leadership and management skils. I would like to contribute my Poster making , teamwork skills to the team.\n', 'If I were to teach him/ her skills I would teach him/ her about self management because growing up i didn’t know much about it and nobody taught me about it . I learned about it by Being in different excruciating life situations . So for a 9 yr old growing up human being I will teach about self management, self prioritising. \nAnd if I were to teach him/ her a software I’ll teach him important and useful  softwares like Microsoft office and never the social media apps like Instagram.', 'Paper . The reason behind choosing paper is that we can always put it in use , we can make different crafts from it . Paper in its various forms are used for hundreds of other purposes. Paper is an irreplaceable part of everyday life. We can also reuse it by recycling it . But pen is just useless without paper and even the saying “ pen is mightier than sword “.', 'Yes', 'Social media head for assets in 2022 , Other achievements in studies '),
(26, 'Strong', 'Public Speaking, Leadership', 'I want to learn software related skills along with it i want to learn how to build a good and impressive resume. Also if i get selected to become a part of your team then i would be able to make many new contacts. I am a hardworking and honest person so if given a task i will do my best so in this way i can contribute to the team. ', 'As i am good at public speaking i can teach him/her some tricks to overcome stage fear, how to stand and act in public, how to get attention of audience as the child is 9 yrs old it will help him/ her in any story telling competition\nAlong with it i have taken 8 yrs of training in classical dancing ( kathak ) so i can teach some basics of that too..', 'Pen..\nPen can be used in different ways apart from writing.\n1) To scratch your back\n2) To use as weapon\n3) To make hairbun\n4) For pen fight\n5) Can be used as paper punch\n6) To unlock bike lock\n7) As a straw\n A lesson learned from pen : just like pen our life is limited once the ink gets finish its over..so focus on what you are doing at the moment and write your own beautiful life story..', 'Yes', '1 ) State Level Elocution Winner\n2) State Level Essay Competition Winner\n3) Cleared 5 exams of Classical Dancing with Distinction\n'),
(27, 'Different than anything ', 'Documentation', 'Leadership qualities and confidence ', 'Help for their studies ', 'Paper \nBecause without paper we don\'t use the pen \nWe can\'t express our thoughts\nWe cannot give our exams \nPaper plays very important role in our life\nSo that\'s why I choose paper', 'No', 'Not yet '),
(28, 'Im good in dancing ', 'Documentation, Poster Designing, Public Speaking', 'To enjoy and to learn public speaking more', 'Main is basic humanity skills', 'Paper because as it is useful and it is created from nature...\nWe can store it as for data\n', 'Yes', 'District Judo level\nBharatnatyam certificate '),
(29, 'Reliable ', 'Poster Designing, Public Speaking, Leadership', 'I would like to learn social communication skills and team work and about my contribution I\'ll my best to work with social affairs and paper works ', 'Yes , I\'m able to teach technology and skills to a 9 year old every one has their unique ability to represent themselves if we represent it perfectly others  can understand it easily ', 'Pen, as we know the pen is also acts as sword with proper words to protect or protest. ', 'Yes', 'Volunteer for trekking'),
(30, 'Envisioner', 'Leadership', 'I would like to learn and also understand the skills of Coding and I would like to contribute my knowledge about stocks and currency market ', 'I would teach him/her basics of coding in way of games (which adds more interest of learning new thing ) ', 'PEN\nPen is very important in lives of students as we right and learn through it\n', 'Yes', 'Got selected for NDA Interview \n'),
(31, 'Energetic', 'Documentation', 'Want to learn stage daring and team work', 'If I got a chance to teach small child, I would love to teach him/her some part of technology,coz nowdays its important and it will  going to help that child in future.', 'Both have equal importance in their place.difficult to choose one between them ', 'No', 'Got a KIT COEK CSE branch'),
(32, 'Sonam', 'Handling Social Media, Public Speaking', 'Confidence , Communication Skills , Social Work etc. I would like to participate in all management in events', 'Technology ', 'I choose pen. With the help of pen I will tell all my feelings. I write down all information with the help of pen. ', 'Yes', 'Elocution Competition '),
(33, 'Optimist', 'Documentation, Poster Designing, Handling Social Media, Public Speaking, Leadership', 'When I got to know about this particular club and attended a few sessions I got to know how the club is about exploring different ideas, concepts and especially the part where it talks about mental health awareness,it’s issues and spirituality. I found this particular club very relatable and something I can contribute to like mental health awareness, spreading  awareness about child abuse and how it affects and stigmatises one’s mind. Then I can also help one motivate or just give out free therapy. I can also contribute and also want to organise a workshop on a project related to my field. The skills I want to learn would be Teamwork, ‘cause I always am better off by myself doing all the work , but I would like learn this skill.', 'Communication, self confidence, Python, some basic writing skills', 'Pen\n- For me a pen metaphorically means to write , to pen down one’s feelings, ideas is what pen is for me . With a pen  in your hand , you don’t need a paper you can use any other surface to write on and metaphorically you can keep everything in your mind , pen everything in your mind too.', 'Yes', 'Writer, Author, District level football player'),
(34, 'Determined and hardworking ', 'Documentation, Handling Social Media, Leadership', 'Public speaking,team work,', 'Ms word,Ms ppt,Ms excel,canva,basic programming', 'Paper has became a very imp part of everyone\'s life.we obtain paper from tress so we should use it wisely.Writing thoughts down on paper also helps to clear your mind .We can use paper in various ways.All the official documents and deals are written/printed on paper.Paper can also be used for writing down all the important tasks that we want to complete that day.So,that we won\'t forget any.Paper is very important part to play in our life.', 'Yes', 'I have been a part of Asces team '),
(35, 'Creative', 'Documentation, Poster Designing', 'I want to teach public speaking by joining this team, and i would like to contribute my skills by helping in every work and task which will be given ', 'I would able to teach drawing or paper presentation skills to a 9 year old child as am good in that field.', 'Pen. Because with help of pen we can write or jot the important points anywhere. If u suddenly remember something important and if you have pen with you can atleast write on your hand', 'Yes', 'District level drawing competitions \n'),
(36, 'Valiant', 'Documentation, Public Speaking, Leadership', 'To be socialize and work as a team and want to contribute soft or technical skills if required.', 'Problem solving skills', 'Pen: Enable to record information or knowledge the way one want to describe on a paper or book or elsewhere were possible with few limitations. Pen makes one to describe or elaborate their ideas using it.', 'No', 'Completed virtual internships, few programs and events.'),
(37, 'Hard Working ', 'Documentation, Poster Designing, Handling Social Media, Leadership', 'Self Confidence', 'How to study, logical thinking, innovative ideas thinking \n', 'As a poet I would like to select pen...as paper lacks in convey your idea without pen sometimes...If I have one pen I can easily note some points and able to explain it easily later...but sometimes pen or paper both lacks to elaborate our thoughts,which better to be conveyed by communicating...we also compare our mind as paper and positive attitude as pen..by which pen we imapart thoughts on our mind!! \n:)', 'No', 'Pioneer 2022-\nPrakalp-2 enteries(out of which 1 group,1 individual)\nAbhivyakti-Idea got selected for final (National Paper Designed)\nShark Tank Competition(Biotech Department)'),
(38, 'Loyal', 'Documentation, Poster Designing', 'Working with group , online earning etc and I have creative mind so I can in any crative things', 'I like to teach skill like solving your own problems and do with  perfection .And sofware like chrome,pdf maker , etc.And technolgy firtly mobile and their features like any sharing app or screen sharing etc', 'Pen is a weapon for creating your future , a pen becomes very special during exams we hope that we write exam with good handwriting .A pen is not special for any calligrapher but it is very special for everyone who like to write their future ', 'Yes', 'Sports certificate and trophy'),
(39, 'Sincere', 'Leadership', 'Leadership, management skills, etc.', 'Honesty, Ethics and learning skills ', 'Pen :\nPen is the sword of modern world. It makes mark of your presence. It is the powerful tool which gives you access to express your knowledge on paper. The  learning we can take from pen is to be productive.\n', 'Yes', 'Scholarship at school level. 97.7 %tile in pcb and 95.11 %tile in pcm in mht-cet. '),
(40, 'Passionate', 'Documentation, Poster Designing, Handling Social Media, Leadership', 'I have heard a lot about good culture in \'Team Mavericks\'. So, I want to explore new ideas with this team. I want to boost my confidence in public speaking while working with the team. I would like to give my best in the art domain. I will always try to give my best in any field the team will like me to work in.', 'If given a chance I will teach the wise use of social media to the 9-year-old child. Nowadays, it has become a main challenge to teach the prudent use of social media to the young and growing minds. ', 'In my opinion, a pen is better. Because the pen is the symbol of the changing minds in a rapidly changing world. The pen is very useful in expressing things. With pen, we can express our art and various other things. With the help of a pen, we can write on paper and on most surfaces. And the main advantage is that we can use it whenever we want or anytime we wish to use it.', 'Yes', 'I am working in the \'Team Aura\' since last year. I have got many prizes in the art domain.'),
(41, 'Enthusiastic', 'Documentation, Handling Social Media, Leadership', 'I know and agree that \'Team Mavericks\' has the best culture. So, I want to join the team to boost confidence in public speaking. I want to learn various editing softwares for poster designing and photo editing as well. I am very good at content writing so, I will love to help the team with the best of my capabilities. I am looking forward to work with the team.', 'If given a chance I will teach social skills to the 9-year-old child. In my opinion social skills are very much important in rapidly changing world. Social skills are beneficial for better understanding of people and behaving in the society.', 'In my opinion, I will choose paper. On paper we can express our ideas. Paper is symbol of the changing minds of people in the rapidly changing world. On paper we can express various ideas and art domains. In the past as well, almost all the best art monuments were drawn on paper. So, I believe that paper is very useful in everyday life as well. So, I pick paper in these two.', 'Yes', 'I am state rank holder in \'Marathon running\'. I am National champion in \'Badminton\'. I am good at content writing. I was also a team manager at \'Abhigyan 2022\'.'),
(42, 'Active Aishwarya', 'Poster Designing, Public Speaking, Leadership', 'Skills want to learn : team co ordination, technical skills\nContribution to team : best public speaking.', 'Skill - Public speaking, Drama, Rangoli, Mehandi.\n', 'Pen and paper both are important but I think paper is more important than pen. There is alternative for pen like pencil or keyboard of laptop but there is no alternative for paper.Paper is versatile material with many uses like currency, book, printing, packaging, important documents, decorating, cleaning, etc.', 'Yes', 'I achieved many prizes in speech competition, running, Mehandi and Rangoli competation.'),
(43, 'Creative', 'Documentation, Poster Designing', 'I want to learn how to be bold and increase self confidence.', 'I would have taught them various handy crafts which would develop their concentration skills...', 'I would choose pen, as we can use pen to share our thoughts or any information on any surface but choosing only paper will mostly act as a garbage or we can\'t use it for  more useful ways.', 'No', 'To be honest, till now i haven\'t achieved that can be showcased.'),
(44, 'Highly Ambitious Person ', 'Public Speaking, Leadership', 'Public Speaking , Exploring in Tech World ', 'Skill - Reading \nAquire lot of knowledge from Technology\nBuild up Mindset from Books and Internet', 'I choose pen.Because if I have paper but doesn\'t have pen it nothing make sense. I can\'t write without pen or pencil. But I have pen and something is so important to note down I can write on my hand .We express ourselves by using pen I mean write book , articles , etc.So pen in more important than paper.', 'Yes', 'Scout - Guide Rajyapurskar , National level Scout - Guide Camp '),
(45, 'Driven ', 'Documentation, Poster Designing', 'The skills that I would love to learn are public speaking and leadership qualities. The things that I\'ll contribute are detail orientation, critical thinking and work ethic of a mule.', 'The skill that I\'ll teach is time management.', 'I chose pen without really thinking about it too much other than the fact that the pen would signify my life. If I make a mistake there is no way I can go back and erase it.I would have to face the consequences,  move forward and learn from the mistakes so that I won\'t repeat them again.', 'No', '1) Participated in I S.C national athletic meet 2019 held at Balewadi, Pune.\n2)  My team came 3rd in All India football tournament held at Goa.\n'),
(46, '#Pranav', 'Documentation, Public Speaking', 'Knowledge about various digital skills and development of leadership as well as the methodology of speaking when Im talking in crowd..\nI can contribute my all skills related like to clear their ideas with my own skill.', 'Learning about speaking skills in various languages with the help of bhasha app and any online game or vocabulary realted games..', 'I choose Pen..\n I will choose pen because pen is the medium to bring down the deep things in the mind into physical form..\nAlso, the work of keeping many unremembered things together is done by pen..\nPens are a good tool to express our views about anything..', 'Yes', '1) Selected in 2018 and 2019 in sahityasammelan for anchoring..\n2) COS of second day of BODHANTRA..\n3) Awarded in various outdoor games\nAnd competitive exams(like NTSE, ITSE, NMMS, Pradnyashodh examination, scholarship exam)\n4) Awarded in district level competition in shayariyaan and poem writing\n5) Also got the achievement in Drawing and wallpainting'),
(47, 'Happy ', 'Public Speaking, Leadership', 'I want to learn team working and communication skills.', 'I think I can teach Painting 🎨 to the 9 year old.', 'Paper . Because paper can be used in many other applications like packing food, cleaning, etc.but pen can only be useful for writing.', 'Yes', 'I have hold the good position in our Ganesh mandal.\nI have lead the small team for science exhibition.'),
(48, 'Versatile ', 'Poster Designing, Public Speaking, Leadership', 'I would like to learn teamwork , event management , social behaviour, crowd handling and some of the technical and non teaching skills from your team. While I would like to contribute some of my skills and help the team with every work I can do.', 'Human values , dance , cooking , basic editing , literature ', 'Pen , because we can use it to write on many surfaces, that is, it\'s somewhat versatile. We can use it to express ourselves with words and what I feel is medium to express ourselves is much more important. Pen can be used as weapon sometimes for defence purpose. Pen can be used as bookmark and it has many such small applications too . While paper do have many applications but using large amount of paper can exploit our resources due to cutting of trees.', 'Yes', 'Best player award for taekwondo, bronze medal in taekwondo , bronze medal in skating , few certificates for art work '),
(49, 'Bold', 'Documentation, Handling Social Media', 'I\'ll like to learn more about organizing events and would like to contribute with my technical skills ', 'i would be able to teach roller  skating to a nine year old. ', 'Pen, as I like to make my own image wherever I go and  create my own story. ', 'Yes', 'securing my position as Media and publicity head in Meraki '),
(50, 'The versatile.', 'Public Speaking, Leadership', 'I am more enthusiastic to work in a team or committee. Management of a event is what i am looking for and hence want to learn more about it.', 'Piggy bank thoery, for future use.', 'I would choose pen over paper. I would assume life/career of an indiviual as a paper and pen who add values to this blank paper. if i would given a chance to shape anyone\'s career then i would use pen to add more and more skills. Now-a-days, people have a very small vision. They just think about their field and nothing else. I will use pen to add more values and vision  in all aspects of world.', 'Yes', 'National level kabaddi player.\nActive member of Rotaract club of Kolhapur.'),
(51, 'straight forward ', 'Handling Social Media', 'Learning IT languages ', 'CAD solidworks', 'paper because we can replace pen with pencil and printing ink but paper can not be replace atleast on primary level.', 'Yes', 'I am volunteering in Pioneer 2022'),
(52, 'Friendly ', 'Poster Designing', 'I like to learn how to coordinate with team members while team working, explore new things without any fear and I want to help team with my skills of drawing and etc.', 'Digital drawing , illustrations ', 'Paper \nI choose paper because paper is a thing on which every one is able to express themselves, to clear their thought. We can create new things out of paper by shaping it to our liking. A word written on paper can change your life.', 'Yes', 'A grade in intermediate drawing exam.\nI have worked in street theatre.'),
(53, 'Water ', 'Documentation, Poster Designing, Handling Social Media, Public Speaking, Leadership', 'Communication , Team Work , Team management and Problem solving ', 'Decision Making , vedicmaths', 'Pen is mightier than the sword .  A pen shape and presents somthing valuable to the readers.', 'No', 'No'),
(54, 'Smart', 'Public Speaking', 'Leadership skill I want to learn and I will do my best', 'I will teach how read English words and sentences making ', 'Pen - Pen is very important tool in our life because as we are students we use pen for writing purpose. Without pen we can\'t store our knowledge.It is used for signature also.', 'Yes', 'Volunteer certificate in ELESA team '),
(55, 'Challenges ', 'Documentation, Handling Social Media', 'Develop the skills and use for teams benifit', 'Skills ', 'Paper - we can mould it in the way we want.\nUsed for many purpose and can have many things in one', 'Yes', 'Member of ELESA'),
(56, 'Meticulous', 'Handling Social Media, Public Speaking, Leadership', 'Being a part of Team Maverick itself would be privilege for me! There will be numerous things I\'ll get to learn from \"The Team \". Precisely I would keenly observe and would love to improve upon skills like team work and management, ability to work optimistically under immense pressure, negotiation and time management. \nI consider myself a human with good communication skills, flexibility, assertiveness and am good at keeping myself motivated and can depersonalise, all with a tinge of a good sense of humour.\nWith these few skills of mine I would be of help to the team and would definitely learn varied things in return. \nSurely looking forward!', 'Basic math\nComputer skills(email, power point,MS office, etc)', 'Choosing between a pen and a paper is quite a dilemma. But I would choose a paper. The reason behind my choice being, a pen has a very specific purpose or use, on contrary to which a paper has an innumerable ways of being used. For instance, a paper can take a shape of a boat or can be a piece of knowledge. All depending on the moment.', 'Yes', 'Core committee member of Merakhi 21\nEvent manager of Enforce 21\nDepartmental representative(diploma)\nCultural vice president(diploma)\nMember of event management of Xest-Fest(school)'),
(57, 'Team player.', 'Documentation, Poster Designing', 'Manage work load', 'Some usefull school hacks..like solving maths problems ', 'Paper can share thoughts from one person to another.', 'No', 'Part of various activities in society.'),
(58, 'Determination:My strongest attribute is my determination. I take on every challenge head-on and do what I need to accomplish my goals, even when the challenge is difficult. ', 'Documentation, Poster Designing, Handling Social Media, Leadership', 'Communication\nTeamwork \nTime management \nProblem solving \n', 'I would teach them coding as coding helps with writing skills & creativity.It also helps with school & academic performance', 'A pen is said to be mighter tha a sword and is notably effective.The capability of writing is equal to the might of sword.For egfor the fight of independence there were people who.opted for sword and some who took the path of pen both had equal contribution to the fight of independence.However the path of sword was full of violence whereas the path of pen was much peaceful option to choose', 'Yes', 'Graduated diploma with first class distinction \nRepresented diploma college in technical paper presentation competition '),
(59, ' INGENIOUS', 'Poster Designing, Public Speaking', 'Team Work\nLeadership Qualities \nStage Daring ', 'Time-Management ', 'Paper \nImportant Notes or documents are preserved on paper. Legal authorization and documentation is done using paper . Paper is a way to express our feelings in written way . Paper is the main element while doing origami . ', 'No', '3rd Candidates Of Session at Bodhantra 2022'),
(60, 'patient ', 'Handling Social Media, Public Speaking, Leadership', 'i want to learn, how to get involved easily with the people as i am little bit of introvert around new people.  on the other hand i can contribute my all the efforts and hardwork and i will make sure the task given to me will be completed within the given time.', 'i will teach a 9 year old the skill of asking questions and also finding its answers successfully at the same time. Because the skill of being curious is very important as it helps us to explore the world , and answer all the questions and hence it will lead in development of other skills and seeing the world with different perspective.', 'i would choose a pen. Because as we know pen is mightier than sword. With pen we can write our own history, our own journey,  in short we can give  shape to our future and as we choose pen hence no other person will be able to write our story and only and only we will have access to mould our future in our way.', 'Yes', 'i am good at calligraphy and for that i got 1st rank at school level handwriting competition. '),
(61, 'Positive energy', 'Documentation, Poster Designing, Handling Social Media, Public Speaking, Leadership', 'My previous work experience includes innovation in many areas, including strategies for more effective teamwork.', 'Photo editing skill and other', 'Paper is an indispensable part of everyday life. Beyond its use as the basic material for written and printed communication, paper in its various forms are used for hundreds of other purposes, including packaging, wrapping, insulating, and toweling.', 'Yes', 'Members in team gaganvedhi'),
(62, 'Responsible ', 'Documentation, Handling Social Media', 'I would like to learn skill like how to develop more publicly speaking ', 'I would to like skill like basic self defence.. which is essential for everyone in their life.. It will help to protect us.. in various situations.. it\'s like need of generation also..', 'Pen is things that helps ur to write down ur emotions feeling of person or things.. It give us an message that onces it\'s over we can\'t be reuse that same pen so we have use our time with efficiently & shouldn\'t be waste it because onces it\'s gone we cannot bring back to improve our mistakes ', 'Yes', 'Achieved gold & silver medal in sports..'),
(63, 'Creative', 'Handling Social Media', 'I like social media.I have handled social media of Innovation club .also I make reels and I know how to make it creative so I would love to be part of your team', 'Dance ', 'Pen because pen is bright and clear. It is unlikely to wear off. Pens are always ready to write. And most important pen help us to find our voice.', 'Yes', 'Team member of Innovation club,MSEB national event certified '),
(64, 'Humbleness, sincerity ', 'Documentation, Poster Designing, Handling Social Media', 'Leadership as well as public speaking, good social communication are some of the skills that I want to learn from the team and I will be a part of the team to contribute to drive some good  changes.', 'Painting ', 'Pen \nThe pen brings your thought process into reality. Studies show that you are 42% more likely to get things done when you write down what you plan to do. We often wonder, what difference does a simple pen make? But we forget our great freedom fighters who changed people with their pen.\nSince ancient times the pen has been a Individual, important part of our lives, of course it has changed who we are. so we can say that pen makes us think.', 'Yes', 'I participated in National Science Congress , \nI have certificate in painting in my 8th.\nI represent my school in Rayat speech competition.\nI was a creative team manager in a Jr. college.'),
(65, 'I am focused and passionate . ', 'Documentation, Poster Designing, Handling Social Media', 'I want to learn public speaking and leadership. ', 'I think in today\'s word coding is most important. Growth of IT structure increase. So that\'s why from 1st std when student know about coding it is beneficial for them. Hence i want to be teach coding to a 9 years old ', 'I think both plays their own role. But I choose a paper. When we don\'t write anything on paper but there are some spot of water we understand what they feel. When there is pen but paper is not present. Where we can write? That\'s why I choose paper ', 'Yes', 'Volunteer in elesa\nVolunteer in Bhima job fair '),
(66, 'Silence ', 'Documentation', 'Good communication skills I want to learn with help of my team members and I would like to contribute my  skills and different knowledge  which needs to my team', 'Action games,keep reading together ,math games,cook together', '1.writing helps our mind learn fast so pens are important here .2. pens are a good tool  to express our views about anything .3.writting with pen improves our calligraphy also.4.pens are my favourite thing because it comes in many colors and inks ', 'Yes', 'In 9th standard our school organized one science knowledge turnament with different teams  in that turnament we won that turnament'),
(67, 'Optimistic ', 'Poster Designing, Public Speaking', 'I want to gain the confidence of public speaking, managing the things,  learn how to handle the situation and tackle it with smart way by gaining experiences through different activities followed in the team and all through want to develop leadership qualities.    . ', 'I can teach them basics of their subjects by using different technology and tricks. I can use different models to teach them things practically. Coming to the software part, Nowadays many applications in the form of interactive games are available like Duolingo for language , word Puzzles , quick maths etc which will made learning fun in a smart way . ', 'I will choose pen according to formal use. In my opinion, you can\'t do much good with only blank paper , cause with the help of pen we can make that paper useful by writing on it the useful things. Both are equally important in their own as only pen or only paper cannot do well alone.', 'Yes', 'Given elementary and intermediate drawing exams, participated in inspire award science model and In School got prizes for co curricular activities. '),
(68, 'Optimist', 'Documentation, Handling Social Media', 'I am willing to learn how to work in a team effectively and improve my communication skills ', 'If I had given a chance to teach to a 9 year old I would be able to teach him how to work in a team effectively and contribute most of our skill .', 'I would like to choose pen as pen is the medium with the help of which I can express my thoughts and beliefs .As we have heard many times pen is mighter than the sword,one man can change the whole world with the power of pen as compared to sword .According to me power of pen is the power of knowledge.\nThe thoughts and ideas once implemented can bring out the massive change .For me the power of writing Conquers above all', 'No', 'I have worked upon different projects during my academic years ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidate_srno`),
  ADD KEY `response_srno` (`response_srno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_srno`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`response_srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidate_srno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_srno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `response_srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`response_srno`) REFERENCES `responses` (`response_srno`);
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
