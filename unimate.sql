-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 07:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unimate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `rating` decimal(3,2) NOT NULL,
  `fees` varchar(50) NOT NULL,
  `courses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `city`, `address`, `contact_number`, `website`, `rating`, `fees`, `courses`) VALUES
(1, 'Thakur College of Engineering and Technology', 'Mumbai', 'Kandivali East, Mumbai', '022-2846-5060', 'https://www.tcetmumbai.in', 4.40, '₹1,50,000', 'B.Tech, M.Tech'),
(2, 'Atharva College of Engineering', 'Mumbai', 'Kandivali West, Mumbai', '022-4028-4501', 'https://www.atharvacoe.ac.in', 4.20, '₹1,20,000', 'B.Tech, MCA'),
(3, 'Nirmala Memorial Foundation College', 'Mumbai', 'Kandivali East, Mumbai', '022-2854-0349', 'https://nmfc.ac.in', 4.10, '₹1,00,000', 'B.Com, B.Sc, BBA'),
(4, 'Kandivali Education Society’s B.K. Shroff College', 'Mumbai', 'Kandivali West, Mumbai', '022-2807-4332', 'https://www.kesshroffcollege.com', 4.30, '₹90,000', 'BMS, BAF, BBI'),
(5, 'Shree L.R. Tiwari College of Engineering', 'Mumbai', 'Mira Road, Mumbai', '022-2845-4222', 'https://slrtce.in', 4.00, '₹1,40,000', 'B.Tech, M.Tech'),
(6, 'Nagindas Khandwala College', 'Mumbai', 'Malad West, Mumbai', '022-2807-8003', 'https://nkc.ac.in', 4.10, '₹80,000', 'B.Com, B.Sc'),
(7, 'Patkar-Varde College', 'Mumbai', 'Goregaon West, Mumbai', '022-2872-3121', 'https://www.patkarvardecollege.edu.in', 4.20, '₹85,000', 'B.Com, B.Sc, BMS'),
(8, 'R.D. National College', 'Mumbai', 'Bandra West, Mumbai', '022-2648-0348', 'https://rdnational.ac.in', 4.30, '₹95,000', 'B.Com, BMS, BAF'),
(9, 'Mithibai College of Arts', 'Mumbai', 'Vile Parle West, Mumbai', '022-4233-5000', 'https://www.mithibai.ac.in', 4.50, '₹1,10,000', 'BMM, BMS, B.Sc'),
(10, 'NMIMS University', 'Mumbai', 'Vile Parle West, Mumbai', '022-4235-5555', 'https://www.nmims.edu', 4.60, '₹3,00,000', 'MBA, BBA, B.Tech'),
(11, 'St. Xavier’s College', 'Mumbai', 'Fort, Mumbai', '022-2262-0661', 'https://xaviers.edu', 4.70, '₹1,30,000', 'B.A., B.Sc, BMM'),
(12, 'HR College of Commerce and Economics', 'Mumbai', 'Churchgate, Mumbai', '022-2287-6116', 'https://www.hrcollege.edu', 4.40, '₹1,20,000', 'B.Com, BMS'),
(13, 'K.J. Somaiya College of Engineering', 'Mumbai', 'Vidyavihar, Mumbai', '022-2406-0420', 'https://kjsce.somaiya.edu', 4.50, '₹2,00,000', 'B.Tech, M.Tech'),
(14, 'SIES College of Arts, Science & Commerce', 'Mumbai', 'Sion West, Mumbai', '022-2407-2729', 'https://siesascs.edu.in', 4.30, '₹90,000', 'BMS, B.Sc, B.Com'),
(15, 'VES Institute of Technology', 'Mumbai', 'Chembur, Mumbai', '022-2522-2828', 'https://vesit.ves.ac.in', 4.20, '₹1,80,000', 'B.Tech, MCA'),
(16, 'Bhavan’s College', 'Mumbai', 'Andheri West, Mumbai', '022-2625-6457', 'https://bhavans.ac.in', 4.10, '₹1,00,000', 'B.Sc, B.Com, B.A.'),
(17, 'Lala Lajpatrai College', 'Mumbai', 'Mahalaxmi, Mumbai', '022-2354-8240', 'https://lalacollege.edu.in', 4.00, '₹85,000', 'BMS, BAF, B.Com'),
(18, 'Wilson College', 'Mumbai', 'Chowpatty, Mumbai', '022-2363-7761', 'https://www.wilsoncollege.edu', 4.20, '₹95,000', 'B.A., B.Sc, BMM'),
(19, 'Rizvi College of Engineering', 'Mumbai', 'Bandra West, Mumbai', '022-2600-4245', 'https://www.eng.rizvi.edu.in', 4.10, '₹1,70,000', 'B.Tech, M.Tech'),
(20, 'Maharashtra College of Arts, Science & Commerce', 'Mumbai', 'Mumbai Central, Mumbai', '022-2301-1472', 'https://maharashtracollege.org', 4.30, '₹80,000', 'B.Com, B.Sc'),
(21, 'Thakur College of Engineering and Technology', 'Mumbai', 'Kandivali East, Mumbai', '022-2846-5060', 'https://www.tcetmumbai.in', 4.40, '₹1,50,000', 'B.Tech, M.Tech'),
(22, 'Atharva College of Engineering', 'Mumbai', 'Kandivali West, Mumbai', '022-4028-4501', 'https://www.atharvacoe.ac.in', 4.20, '₹1,20,000', 'B.Tech, MCA'),
(23, 'Nirmala Memorial Foundation College', 'Mumbai', 'Kandivali East, Mumbai', '022-2854-0349', 'https://nmfc.ac.in', 4.10, '₹1,00,000', 'B.Com, B.Sc, BBA'),
(24, 'Kandivali Education Society’s B.K. Shroff College', 'Mumbai', 'Kandivali West, Mumbai', '022-2807-4332', 'https://www.kesshroffcollege.com', 4.30, '₹90,000', 'BMS, BAF, BBI'),
(25, 'Shree L.R. Tiwari College of Engineering', 'Mumbai', 'Mira Road, Mumbai', '022-2845-4222', 'https://slrtce.in', 4.00, '₹1,40,000', 'B.Tech, M.Tech'),
(26, 'Nagindas Khandwala College', 'Mumbai', 'Malad West, Mumbai', '022-2807-8003', 'https://nkc.ac.in', 4.10, '₹80,000', 'B.Com, B.Sc'),
(27, 'Patkar-Varde College', 'Mumbai', 'Goregaon West, Mumbai', '022-2872-3121', 'https://www.patkarvardecollege.edu.in', 4.20, '₹85,000', 'B.Com, B.Sc, BMS'),
(28, 'R.D. National College', 'Mumbai', 'Bandra West, Mumbai', '022-2648-0348', 'https://rdnational.ac.in', 4.30, '₹95,000', 'B.Com, BMS, BAF'),
(29, 'Mithibai College of Arts', 'Mumbai', 'Vile Parle West, Mumbai', '022-4233-5000', 'https://www.mithibai.ac.in', 4.50, '₹1,10,000', 'BMM, BMS, B.Sc'),
(30, 'NMIMS University', 'Mumbai', 'Vile Parle West, Mumbai', '022-4235-5555', 'https://www.nmims.edu', 4.60, '₹3,00,000', 'MBA, BBA, B.Tech'),
(31, 'St. Xavier’s College', 'Mumbai', 'Fort, Mumbai', '022-2262-0661', 'https://xaviers.edu', 4.70, '₹1,30,000', 'B.A., B.Sc, BMM'),
(32, 'HR College of Commerce and Economics', 'Mumbai', 'Churchgate, Mumbai', '022-2287-6116', 'https://www.hrcollege.edu', 4.40, '₹1,20,000', 'B.Com, BMS'),
(33, 'K.J. Somaiya College of Engineering', 'Mumbai', 'Vidyavihar, Mumbai', '022-2406-0420', 'https://kjsce.somaiya.edu', 4.50, '₹2,00,000', 'B.Tech, M.Tech'),
(34, 'SIES College of Arts, Science & Commerce', 'Mumbai', 'Sion West, Mumbai', '022-2407-2729', 'https://siesascs.edu.in', 4.30, '₹90,000', 'BMS, B.Sc, B.Com'),
(35, 'VES Institute of Technology', 'Mumbai', 'Chembur, Mumbai', '022-2522-2828', 'https://vesit.ves.ac.in', 4.20, '₹1,80,000', 'B.Tech, MCA'),
(36, 'Bhavan’s College', 'Mumbai', 'Andheri West, Mumbai', '022-2625-6457', 'https://bhavans.ac.in', 4.10, '₹1,00,000', 'B.Sc, B.Com, B.A.'),
(37, 'Lala Lajpatrai College', 'Mumbai', 'Mahalaxmi, Mumbai', '022-2354-8240', 'https://lalacollege.edu.in', 4.00, '₹85,000', 'BMS, BAF, B.Com'),
(38, 'Wilson College', 'Mumbai', 'Chowpatty, Mumbai', '022-2363-7761', 'https://www.wilsoncollege.edu', 4.20, '₹95,000', 'B.A., B.Sc, BMM'),
(39, 'Rizvi College of Engineering', 'Mumbai', 'Bandra West, Mumbai', '022-2600-4245', 'https://www.eng.rizvi.edu.in', 4.10, '₹1,70,000', 'B.Tech, M.Tech'),
(40, 'Maharashtra College of Arts, Science & Commerce', 'Mumbai', 'Mumbai Central, Mumbai', '022-2301-1472', 'https://maharashtracollege.org', 4.30, '₹80,000', 'B.Com, B.Sc'),
(41, 'Mumbai University', 'Mumbai', 'Kalina, Mumbai', '022-2654-3000', 'https://mu.ac.in', 4.50, '₹1,50,000', 'MBA, BBA, B.Tech'),
(42, 'SNDT Women’s University', 'Mumbai', 'Juhu, Mumbai', '022-2660-8493', 'https://sndt.ac.in', 4.30, '₹1,20,000', 'B.A., B.Sc, B.Com'),
(43, 'Jai Hind College', 'Mumbai', 'Churchgate, Mumbai', '022-2204-0256', 'https://www.jaihindcollege.com', 4.40, '₹1,00,000', 'BMS, BAF, B.Com'),
(44, 'KPB Hinduja College', 'Mumbai', 'Charni Road, Mumbai', '022-4098-9000', 'https://hindujacollege.in', 4.20, '₹90,000', 'B.Com, BMS'),
(45, 'Sophia College for Women', 'Mumbai', 'Breach Candy, Mumbai', '022-2351-2642', 'https://sophiacollegemumbai.com', 4.60, '₹1,10,000', 'B.A., B.Sc'),
(46, 'Don Bosco Institute of Technology', 'Mumbai', 'Kurla West, Mumbai', '022-2504-2018', 'https://www.dbit.in', 4.40, '₹2,00,000', 'B.Tech, M.Tech'),
(47, 'VES College of Pharmacy', 'Mumbai', 'Chembur, Mumbai', '022-2522-2828', 'https://vespharmacy.ves.ac.in', 4.20, '₹1,80,000', 'B.Pharm, M.Pharm'),
(48, 'Sathaye College', 'Mumbai', 'Vile Parle East, Mumbai', '022-2614-1149', 'https://www.sathayecollege.edu.in', 4.00, '₹85,000', 'B.Com, B.Sc'),
(49, 'R.A. Podar College', 'Mumbai', 'Matunga, Mumbai', '022-2414-6128', 'https://rapodar.ac.in', 4.30, '₹95,000', 'B.Com, BMS'),
(50, 'R.A. Podar College', 'Mumbai', 'Matunga, Mumbai', '022-2414-6128', 'https://rapodar.ac.in', 4.30, '₹95,000', 'B.Com, BMS'),
(51, 'Guru Nanak Khalsa College', 'Mumbai', 'Matunga, Mumbai', '022-2409-2186', 'https://gnkhalsa.edu', 4.20, '₹90,000', 'B.Com, B.Sc, BMS'),
(52, 'Ramniranjan Jhunjhunwala College', 'Mumbai', 'Ghatkopar, Mumbai', '022-2515-7341', 'https://rjcollege.edu.in', 4.40, '₹85,000', 'B.Com, B.Sc, BMS'),
(53, 'Somaiya Vidyavihar University', 'Mumbai', 'Vidyavihar, Mumbai', '022-2406-0420', 'https://somaiya.edu', 4.50, '₹2,00,000', 'B.Tech, MBA, BBA'),
(54, 'VES Institute of Technology', 'Mumbai', 'Chembur, Mumbai', '022-2522-2828', 'https://vesit.ves.ac.in', 4.30, '₹1,80,000', 'B.Tech, MCA'),
(55, 'SIES College of Arts, Science & Commerce', 'Mumbai', 'Sion, Mumbai', '022-2407-2729', 'https://siesascs.edu.in', 4.40, '₹1,00,000', 'BMS, B.Sc, B.Com'),
(56, 'Ruia College', 'Mumbai', 'Matunga, Mumbai', '022-2414-3098', 'https://ruiacollege.edu', 4.50, '₹90,000', 'B.Sc, B.A., M.Sc'),
(57, 'Mulund College of Commerce', 'Mumbai', 'Mulund West, Mumbai', '022-2564-1291', 'https://mccmulund.ac.in', 4.20, '₹80,000', 'B.Com, BMS, B.Sc'),
(58, 'Birla College of Arts, Science & Commerce', 'Mumbai', 'Kalyan, Mumbai', '0251-2230-392', 'https://birlacollegekalyan.com', 4.30, '₹70,000', 'B.Com, B.Sc, BBA'),
(59, 'Model College', 'Mumbai', 'Dombivli, Mumbai', '0251-2444-200', 'https://model-college.com', 4.00, '₹75,000', 'B.Com, B.Sc, BMS'),
(60, 'Vaze College', 'Mumbai', 'Mulund, Mumbai', '022-2564-8000', 'https://vazecollege.net', 4.60, '₹85,000', 'B.Com, BMS, B.Sc'),
(61, 'St. Joseph’s College', 'Mumbai', 'Kalyan, Mumbai', '0251-2314-400', 'https://stjosephcollege.in', 4.10, '₹65,000', 'B.Sc, B.Com, B.A.'),
(62, 'NES Ratnam College', 'Mumbai', 'Bhandup, Mumbai', '022-2564-1256', 'https://nesratnam.com', 4.30, '₹78,000', 'B.Com, B.Sc, BMS'),
(63, 'Joshi-Bedekar College', 'Mumbai', 'Thane, Mumbai', '022-2536-2151', 'https://joshibedekar.org', 4.50, '₹70,000', 'B.Com, B.Sc, BMS'),
(64, 'KC College of Engineering', 'Mumbai', 'Thane, Mumbai', '022-2536-3389', 'https://kccoe.org', 4.20, '₹1,50,000', 'B.Tech, M.Tech'),
(65, 'L.D. Sonawane College', 'Mumbai', 'Kalyan, Mumbai', '0251-2311-405', 'https://ldsonawanecollege.com', 4.00, '₹60,000', 'B.Com, B.A., B.Sc'),
(66, 'Sheth NKTT College', 'Mumbai', 'Thane, Mumbai', '022-2536-1451', 'https://nkttcollege.edu.in', 4.10, '₹75,000', 'B.Com, BMS, B.Sc'),
(67, 'K.G. Joshi College', 'Mumbai', 'Thane, Mumbai', '022-2536-3739', 'https://joshicollege.edu', 4.30, '₹85,000', 'B.Com, BMS, B.Sc'),
(68, 'Bharat College', 'Mumbai', 'Badlapur, Mumbai', '0251-2694-202', 'https://bharatcollege.com', 4.00, '₹55,000', 'B.Com, BMS, B.Sc'),
(69, 'Ideal College of Pharmacy', 'Mumbai', 'Kalyan, Mumbai', '0251-2232-901', 'https://idealcollege.org', 4.20, '₹1,20,000', 'B.Pharm, D.Pharm'),
(70, 'Niranjana Majithia College', 'Mumbai', 'M.G. Road, Kandivali West, Mumbai, Maharashtra 400067', '022-2801-8978', 'https://nmcollege.in', 4.30, '₹75,000 - ₹1,20,000', 'B.Com, B.Sc IT, BMS, BAF, BBI'),
(71, 'St. Stephen\'s College', 'Delhi', 'University Enclave, Delhi', '011-2766-7271', 'https://www.ststephens.edu', 4.80, '1.2 - 1.5 LPA', 'BA, BSc, MA, MSc'),
(72, 'Hindu College', 'Delhi', 'University Enclave, Delhi', '011-2766-7184', 'https://www.hinducollege.ac.in', 4.70, '1.1 - 1.4 LPA', 'BA, BCom, BSc, MA, MSc'),
(73, 'Miranda House', 'Delhi', 'University Enclave, Delhi', '011-2766-6983', 'https://www.mirandahouse.ac.in', 4.60, '1.0 - 1.3 LPA', 'BA, BCom, BSc'),
(74, 'Shri Ram College of Commerce (SRCC)', 'Delhi', 'Maurice Nagar, Delhi', '011-2766-2319', 'https://www.srcc.edu', 4.90, '1.5 - 2.0 LPA', 'BCom, BA Eco, MCom, MA Eco'),
(75, 'Kirori Mal College', 'Delhi', 'University Enclave, Delhi', '011-2766-7891', 'https://www.kmc.du.ac.in', 4.50, '1.0 - 1.4 LPA', 'BA, BSc, BCom, MA, MSc'),
(76, 'Ramjas College', 'Delhi', 'University Enclave, Delhi', '011-2766-7706', 'https://ramjas.du.ac.in', 4.40, '1.0 - 1.3 LPA', 'BA, BCom, BSc, MA, MSc'),
(77, 'Hansraj College', 'Delhi', 'Malka Ganj, Delhi', '011-2766-7458', 'https://www.hansrajcollege.ac.in', 4.60, '1.0 - 1.5 LPA', 'BA, BSc, BCom, MA, MSc'),
(78, 'Daulat Ram College', 'Delhi', 'North Campus, Delhi', '011-2766-7863', 'https://www.dr.du.ac.in', 4.30, '0.9 - 1.3 LPA', 'BA, BCom, BSc'),
(79, 'Indraprastha College for Women', 'Delhi', 'Sham Nath Marg, Delhi', '011-2396-2001', 'https://www.ipcollege.ac.in', 4.20, '0.9 - 1.2 LPA', 'BA, BCom, BSc'),
(80, 'Sri Venkateswara College', 'Delhi', 'Dhaula Kuan, Delhi', '011-2619-5551', 'https://svc.ac.in', 4.50, '1.0 - 1.4 LPA', 'BA, BCom, BSc, MA'),
(81, 'Jesus and Mary College', 'Delhi', 'Chanakyapuri, Delhi', '011-2611-0041', 'https://www.jmc.ac.in', 4.40, '1.0 - 1.3 LPA', 'BA, BCom, BSc'),
(82, 'Motilal Nehru College', 'Delhi', 'Benito Juarez Marg, Delhi', '011-2411-2604', 'https://mlncdu.ac.in', 4.20, '0.9 - 1.2 LPA', 'BA, BCom, BSc'),
(83, 'Ram Lal Anand College', 'Delhi', 'South Campus, Delhi', '011-2411-2604', 'https://rla.du.ac.in', 4.30, '1.0 - 1.3 LPA', 'BA, BCom, BSc'),
(84, 'Maitreyi College', 'Delhi', 'Chanakyapuri, Delhi', '011-2467-2123', 'https://maitreyi.ac.in', 4.10, '0.9 - 1.2 LPA', 'BA, BCom, BSc'),
(85, 'Atma Ram Sanatan Dharma College', 'Delhi', 'Dhaula Kuan, Delhi', '011-2411-0744', 'https://arsdcollege.ac.in', 4.30, '0.9 - 1.3 LPA', 'BA, BCom, BSc'),
(86, 'Delhi College of Arts and Commerce', 'Delhi', 'Netaji Nagar, Delhi', '011-2410-8663', 'https://dcac.du.ac.in', 4.20, '1.0 - 1.3 LPA', 'BA, BCom, BSc'),
(87, 'Shaheed Bhagat Singh College', 'Delhi', 'Sheikh Sarai, Delhi', '011-2927-1171', 'https://sbsc.in', 4.40, '1.0 - 1.4 LPA', 'BA, BCom, BSc'),
(88, 'Gargi College', 'Delhi', 'Siri Fort, Delhi', '011-2649-4542', 'https://gargi.du.ac.in', 4.30, '0.9 - 1.2 LPA', 'BA, BCom, BSc'),
(89, 'Kamala Nehru College', 'Delhi', 'August Kranti Marg, Delhi', '011-2649-4881', 'https://knc.edu.in', 4.40, '1.0 - 1.4 LPA', 'BA, BCom, BSc'),
(90, 'Delhi Technological University (DTU)', 'Delhi', 'Rohini, Delhi', '011-2787-1018', 'https://www.dtu.ac.in', 4.80, '2.0 - 3.5 LPA', 'BTech, MTech, MBA'),
(91, 'Netaji Subhas University of Technology (NSUT)', 'Delhi', 'Dwarka, Delhi', '011-2500-7000', 'https://www.nsut.ac.in', 4.70, '2.2 - 3.5 LPA', 'BTech, MTech, PhD'),
(92, 'Guru Gobind Singh Indraprastha University (GGSIPU)', 'Delhi', 'Dwarka, Delhi', '011-2530-2167', 'https://www.ipu.ac.in', 4.60, '1.8 - 3.0 LPA', 'BTech, MBA, LLB'),
(93, 'Ambedkar Institute of Advanced Communication Technologies', 'Delhi', 'Geeta Colony, Delhi', '011-2204-1020', 'https://aiactr.ac.in', 4.30, '1.5 - 2.5 LPA', 'BTech, MTech'),
(94, 'HMR Institute of Technology and Management', 'Delhi', 'Narela, Delhi', '011-2778-7071', 'https://hmritm.ac.in', 4.20, '1.5 - 2.0 LPA', 'BTech, MBA'),
(95, 'Faculty of Management Studies (FMS)', 'Delhi', 'North Campus, Delhi', '011-2766-6382', 'https://www.fms.edu', 4.90, '2.0 - 4.0 LPA', 'MBA, PhD'),
(96, 'FORE School of Management', 'Delhi', 'Qutab Institutional Area, Delhi', '011-4124-2472', 'https://www.fsm.ac.in', 4.50, '2.5 - 4.5 LPA', 'MBA, PGDM'),
(97, 'International Management Institute (IMI)', 'Delhi', 'Vasant Vihar, Delhi', '011-4719-4100', 'https://www.imi.edu', 4.70, '2.8 - 5.0 LPA', 'MBA, PGDM'),
(98, 'Zakir Husain Delhi College', 'Delhi', 'Ajmeri Gate, Delhi', '011-2323-2335', 'https://www.zakirhusaindelhicollege.ac.in', 4.20, '1.0 - 1.4 LPA', 'BA, BCom, BSc'),
(99, 'Bharati Vidyapeeth Institute of Computer Applications and Management (BVICAM)', 'Delhi', 'Paschim Vihar, Delhi', '011-2527-5079', 'https://www.bvicam.ac.in', 4.30, '1.5 - 2.5 LPA', 'BCA, MCA'),
(100, 'Maharaja Surajmal Institute', 'Delhi', 'Janakpuri, Delhi', '011-2552-5070', 'https://www.msijanakpuri.com', 4.40, '1.6 - 2.8 LPA', 'BBA, BCA, BEd'),
(101, 'Jagan Institute of Management Studies (JIMS)', 'Delhi', 'Rohini, Delhi', '011-4518-5555', 'https://www.jimsindia.org', 4.30, '1.8 - 3.0 LPA', 'MBA, PGDM, BBA'),
(102, 'Tecnia Institute of Advanced Studies', 'Delhi', 'Rohini, Delhi', '011-2755-7411', 'https://www.tecnia.in', 4.10, '1.5 - 2.5 LPA', 'BBA, BCA, MBA'),
(103, 'Vivekananda Institute of Professional Studies (VIPS)', 'Delhi', 'Pitampura, Delhi', '011-2734-3402', 'https://www.vips.edu', 4.50, '1.8 - 3.2 LPA', 'BBA, BCA, LLB'),
(104, 'Bhagwan Parshuram Institute of Technology (BPIT)', 'Delhi', 'Rohini, Delhi', '011-2757-2004', 'https://www.bpitindia.com', 4.20, '1.6 - 2.5 LPA', 'BTech, MBA'),
(105, 'Maharaja Agrasen Institute of Technology (MAIT)', 'Delhi', 'Rohini, Delhi', '011-2729-0153', 'https://www.mait.ac.in', 4.40, '1.8 - 3.0 LPA', 'BTech, MBA'),
(106, 'Northern India Engineering College (NIEC)', 'Delhi', 'Shastri Park, Delhi', '011-2285-4343', 'https://www.niecdelhi.ac.in', 4.10, '1.5 - 2.4 LPA', 'BTech, MBA'),
(107, 'Chanderprabhu Jain College of Higher Studies', 'Delhi', 'Narela, Delhi', '011-2728-6100', 'https://www.cpj.edu.in', 4.00, '1.4 - 2.3 LPA', 'BBA, BCA, MBA'),
(108, 'Trinity Institute of Professional Studies', 'Delhi', 'Dwarka, Delhi', '011-4563-6315', 'https://www.tips.edu.in', 4.30, '1.5 - 2.5 LPA', 'BBA, BCA, BAJMC'),
(109, 'Fairfield Institute of Management and Technology', 'Delhi', 'Kaplashra, Delhi', '011-4560-7400', 'https://www.fimt-ggsipu.org', 4.20, '1.6 - 2.6 LPA', 'BBA, BCA, MBA'),
(110, 'Jagannath International Management School', 'Delhi', 'Kalkaji, Delhi', '011-4061-9200', 'https://www.jims.edu.in', 4.40, '1.7 - 2.8 LPA', 'BBA, BCA, MBA'),
(111, 'Delhi Institute of Advanced Studies (DIAS)', 'Delhi', 'Rohini, Delhi', '011-2793-0443', 'https://dias.ac.in', 4.30, '1.6 - 2.5 LPA', 'BBA, BCA, MBA'),
(112, 'Institute of Information Technology and Management (IITM)', 'Delhi', 'Janakpuri, Delhi', '011-2852-0884', 'https://www.iitmjanakpuri.com', 4.20, '1.5 - 2.4 LPA', 'BBA, BCA, MBA'),
(113, 'Institute of Innovation in Technology and Management (IITM)', 'Delhi', 'Janakpuri, Delhi', '011-2852-0884', 'https://www.iitmjanakpuri.com', 4.10, '1.4 - 2.3 LPA', 'BBA, BCA, MBA'),
(114, 'Rukmini Devi Institute of Advanced Studies', 'Delhi', 'Rohini, Delhi', '011-2786-2730', 'https://www.rdiact.com', 4.30, '1.5 - 2.5 LPA', 'BBA, BCA, MBA'),
(115, 'Banarsidas Chandiwala Institute of Professional Studies', 'Delhi', 'Dwarka, Delhi', '011-2808-3670', 'https://bcips.ac.in', 4.20, '1.6 - 2.6 LPA', 'BBA, MBA'),
(116, 'Bharatiya Vidya Bhavan\'s Usha & Lakshmi Mittal Institute', 'Delhi', 'Kasturba Gandhi Marg, Delhi', '011-2338-2683', 'https://www.bvimsr.com', 4.30, '1.7 - 2.7 LPA', 'BBA, MBA'),
(117, 'Lal Bahadur Shastri Institute of Management (LBSIM)', 'Delhi', 'Dwarka, Delhi', '011-2530-7700', 'https://www.lbsim.ac.in', 4.50, '2.0 - 3.5 LPA', 'MBA, PGDM'),
(118, 'New Delhi Institute of Management (NDIM)', 'Delhi', 'Tughlakabad, Delhi', '011-2996-5555', 'https://www.ndimdelhi.org', 4.40, '1.8 - 3.0 LPA', 'MBA, PGDM'),
(119, 'Jagannath Institute of Management Sciences', 'Delhi', 'Rohini, Delhi', '011-4518-5555', 'https://www.jimsindia.org', 4.30, '1.8 - 3.0 LPA', 'MBA, PGDM, BBA'),
(120, 'Christ University', 'Bangalore', 'Hosur Road, Bangalore', '080-4012-9600', 'https://www.christuniversity.in', 4.80, '2.0 - 5.0 LPA', 'BBA, BCom, MBA, BTech'),
(121, 'Mount Carmel College', 'Bangalore', 'Palace Road, Bangalore', '080-2228-3414', 'https://www.mountcarmelcollegeblr.co.in', 4.70, '1.5 - 3.5 LPA', 'BA, BSc, BCom, MBA'),
(122, 'Jain University', 'Bangalore', 'Jayanagar, Bangalore', '080-4665-0100', 'https://www.jainuniversity.ac.in', 4.60, '2.2 - 4.8 LPA', 'BTech, MBA, BCom, BCA'),
(123, 'St. Joseph\'s College', 'Bangalore', 'Lalbagh Road, Bangalore', '080-2221-1429', 'https://www.sjc.ac.in', 4.50, '1.8 - 4.2 LPA', 'BA, BCom, BSc, BBA'),
(124, 'RV College of Engineering', 'Bangalore', 'Mysore Road, Bangalore', '080-6717-8000', 'https://www.rvce.edu.in', 4.80, '2.5 - 6.0 LPA', 'BTech, MTech, MBA'),
(125, 'Dayananda Sagar University', 'Bangalore', 'Kumaraswamy Layout, Bangalore', '080-4646-1800', 'https://www.dsu.edu.in', 4.60, '2.0 - 4.5 LPA', 'BTech, MBA, BCom, BBA'),
(126, 'PES University', 'Bangalore', 'Banashankari, Bangalore', '080-2672-1983', 'https://www.pes.edu', 4.70, '2.5 - 6.0 LPA', 'BTech, MBA, BCA, BCom'),
(127, 'Alliance University', 'Bangalore', 'Anekal, Bangalore', '080-4619-9000', 'https://www.alliance.edu.in', 4.50, '2.3 - 5.0 LPA', 'BTech, MBA, BCom, BA LLB'),
(128, 'MS Ramaiah Institute of Technology', 'Bangalore', 'MSR Nagar, Bangalore', '080-2360-0822', 'https://www.msrit.edu', 4.60, '2.0 - 5.5 LPA', 'BTech, MTech, MBA'),
(129, 'New Horizon College of Engineering', 'Bangalore', 'Marathahalli, Bangalore', '080-6629-7777', 'https://www.newhorizonindia.edu', 4.40, '2.0 - 4.0 LPA', 'BTech, MTech, MBA'),
(130, 'Bangalore Institute of Technology', 'Bangalore', 'KR Road, Bangalore', '080-2661-1748', 'https://bit-bangalore.edu.in', 4.50, '2.1 - 4.8 LPA', 'BTech, MBA, MTech'),
(131, 'Acharya Institute of Technology', 'Bangalore', 'Soladevanahalli, Bangalore', '080-2372-2222', 'https://www.acharya.ac.in', 4.30, '2.0 - 4.5 LPA', 'BTech, MBA, MCA'),
(132, 'CMR Institute of Technology', 'Bangalore', 'ITPL Road, Bangalore', '080-2852-2391', 'https://www.cmrit.ac.in', 4.40, '2.0 - 4.2 LPA', 'BTech, MBA, MCA'),
(133, 'Presidency University', 'Bangalore', 'Yelahanka, Bangalore', '080-4925-5533', 'https://www.presidencyuniversity.in', 4.30, '1.8 - 4.0 LPA', 'BTech, MBA, BCom, BBA'),
(134, 'Oxford College of Engineering', 'Bangalore', 'Bommanahalli, Bangalore', '080-3021-9600', 'https://www.theoxford.edu', 4.20, '2.0 - 4.0 LPA', 'BTech, MBA, MTech'),
(135, 'Reva University', 'Bangalore', 'Yelahanka, Bangalore', '080-4696-6966', 'https://www.reva.edu.in', 4.40, '2.0 - 4.5 LPA', 'BTech, MBA, BBA, BCom'),
(136, 'Kristu Jayanti College', 'Bangalore', 'K Narayanapura, Bangalore', '080-2846-5611', 'https://www.kristujayanti.edu.in', 4.50, '1.5 - 3.5 LPA', 'BCom, BBA, MBA'),
(137, 'East Point College of Engineering', 'Bangalore', 'Bidarahalli, Bangalore', '080-2847-3663', 'https://www.eastpoint.ac.in', 4.20, '1.8 - 4.0 LPA', 'BTech, MTech, MBA'),
(138, 'ISBR Business School', 'Bangalore', 'Electronic City, Bangalore', '080-4081-9500', 'https://www.isbr.in', 4.40, '2.2 - 5.0 LPA', 'MBA, PGDM'),
(139, 'BMS College of Engineering', 'Bangalore', 'Basavanagudi, Bangalore', '080-2662-2130', 'https://www.bmsce.ac.in', 4.80, '2.5 - 6.0 LPA', 'BTech, MTech, MBA'),
(140, 'Garden City University', 'Bangalore', 'Battarahalli, Bangalore', '080-6648-6611', 'https://www.gardencity.university', 4.10, '1.8 - 3.8 LPA', 'BCom, BBA, MBA, MCA'),
(141, 'Indian Academy Group of Institutions', 'Bangalore', 'Kalyan Nagar, Bangalore', '080-6740-4949', 'https://www.indianacademy.edu.in', 4.20, '1.8 - 3.5 LPA', 'BCom, BSc, BBA, MBA'),
(142, 'Cambridge Institute of Technology', 'Bangalore', 'KR Puram, Bangalore', '080-2561-5588', 'https://www.cambridge.edu.in', 4.30, '2.0 - 4.0 LPA', 'BTech, MBA, MCA'),
(143, 'CMR University', 'Bangalore', 'Bagalur, Bangalore', '080-2545-1745', 'https://www.cmr.edu.in', 4.40, '2.0 - 4.5 LPA', 'BTech, MBA, BCom, BBA'),
(144, 'Ramaiah Institute of Management', 'Bangalore', 'MSR Nagar, Bangalore', '080-2360-2450', 'https://www.msirm.in', 4.50, '2.5 - 5.0 LPA', 'MBA, PGDM'),
(145, 'AMC Engineering College', 'Bangalore', 'Bannerghatta Road, Bangalore', '080-2782-2345', 'https://www.amcgroup.edu.in', 4.20, '2.0 - 4.0 LPA', 'BTech, MBA, MTech'),
(146, 'Don Bosco Institute of Technology', 'Bangalore', 'Kumbalgodu, Bangalore', '080-2843-7028', 'https://www.donboscobangalore.education', 4.10, '1.8 - 3.8 LPA', 'BTech, MTech, MBA'),
(147, 'Atria Institute of Technology', 'Bangalore', 'Hebbal, Bangalore', '080-2363-1298', 'https://www.atria.edu', 4.30, '2.0 - 4.2 LPA', 'BTech, MBA, MCA'),
(148, 'RNS Institute of Technology', 'Bangalore', 'Channasandra, Bangalore', '080-2861-1703', 'https://www.rnsit.ac.in', 4.50, '2.2 - 4.5 LPA', 'BTech, MTech, MBA'),
(149, 'MVJ College of Engineering', 'Bangalore', 'Whitefield, Bangalore', '080-4299-1000', 'https://www.mvjce.edu.in', 4.40, '2.0 - 4.3 LPA', 'BTech, MBA, MTech'),
(150, 'T John Institute of Technology', 'Bangalore', 'Gottigere, Bangalore', '080-2842-2205', 'https://www.tjohncollege.com', 4.20, '1.8 - 3.5 LPA', 'BTech, MBA, MCA'),
(151, 'Nitte Meenakshi Institute of Technology', 'Bangalore', 'Yelahanka, Bangalore', '080-2216-2800', 'https://www.nmit.ac.in', 4.30, '2.0 - 4.2 LPA', 'BTech, MTech, MBA'),
(152, 'Global Academy of Technology', 'Bangalore', 'RR Nagar, Bangalore', '080-2860-3158', 'https://www.gat.ac.in', 4.20, '1.8 - 4.0 LPA', 'BTech, MBA, MTech'),
(153, 'CMR Law School', 'Bangalore', 'Bagalur, Bangalore', '080-2545-1745', 'https://www.cmr.edu.in/law', 4.10, '1.5 - 3.0 LPA', 'BA LLB, BBA LLB, LLM'),
(154, 'RV Institute of Management', 'Bangalore', 'Jayanagar, Bangalore', '080-2654-7200', 'https://www.rvim.edu.in', 4.50, '2.2 - 4.5 LPA', 'MBA, PGDM'),
(155, 'Gopalan College of Engineering', 'Bangalore', 'KR Puram, Bangalore', '080-4222-5222', 'https://www.gopalancolleges.com', 4.00, '1.8 - 3.5 LPA', 'BTech, MTech, MBA'),
(156, 'CMR Institute of Management Studies', 'Bangalore', 'OMBR Layout, Bangalore', '080-2545-1745', 'https://www.cmrit.ac.in', 4.20, '1.5 - 3.5 LPA', 'BBA, BCom, MBA'),
(157, 'City Engineering College', 'Bangalore', 'Kanakapura Road, Bangalore', '080-2843-2323', 'https://www.cityengineeringcollege.ac.in', 4.10, '1.8 - 3.8 LPA', 'BTech, MBA, MTech'),
(158, 'The Oxford College of Science', 'Bangalore', 'HSR Layout, Bangalore', '080-6175-4600', 'https://www.theoxford.edu/science', 4.30, '1.5 - 3.5 LPA', 'BSc, MSc, MBA'),
(159, 'Jyoti Nivas College', 'Bangalore', 'Koramangala, Bangalore', '080-2550-4064', 'https://www.jyotinivas.org', 4.40, '1.2 - 3.0 LPA', 'BCom, BBA, BA, MBA'),
(160, 'St. Francis College', 'Bangalore', 'Electronic City, Bangalore', '080-2573-2606', 'https://www.stfranciscollege.edu.in', 4.20, '1.5 - 3.2 LPA', 'BCom, BBA, MBA'),
(161, 'Surana College', 'Bangalore', 'South End Circle, Bangalore', '080-2664-6450', 'https://www.suranacollege.edu.in', 4.30, '1.2 - 3.0 LPA', 'BCom, BBA, MBA'),
(162, 'Sindhi College', 'Bangalore', 'Hebbal, Bangalore', '080-2343-1206', 'https://www.sindhicollege.com', 4.10, '1.2 - 2.8 LPA', 'BCom, BBA, BCA, MBA'),
(163, 'GITAM School of Business', 'Bangalore', 'Doddaballapur Road, Bangalore', '080-2809-5020', 'https://www.gitam.edu', 4.30, '2.0 - 4.5 LPA', 'MBA, BBA'),
(164, 'ISME - International School of Management', 'Bangalore', 'Sarjapur Road, Bangalore', '080-2801-8200', 'https://www.isme.in', 4.40, '2.0 - 4.0 LPA', 'BBA, MBA, PGDM'),
(165, 'Brindavan College', 'Bangalore', 'Yelahanka, Bangalore', '080-2847-1431', 'https://www.brindavancollege.com', 4.10, '1.5 - 3.2 LPA', 'BCom, BBA, MBA'),
(166, 'Sri Bhagawan Mahaveer Jain College', 'Bangalore', 'JC Road, Bangalore', '080-2222-1112', 'https://www.jaincollege.ac.in', 4.30, '1.5 - 3.5 LPA', 'BCom, BBA, MBA'),
(167, 'RR Institutions', 'Bangalore', 'Chikkabanavara, Bangalore', '080-2839-7289', 'https://www.rrinstitutions.com', 4.20, '1.8 - 4.0 LPA', 'BTech, MBA, MTech'),
(168, 'Aditya Institute of Management', 'Bangalore', 'Yelahanka, Bangalore', '080-2846-0033', 'https://www.adityainstitute.edu.in', 4.10, '1.5 - 3.5 LPA', 'MBA, PGDM'),
(169, 'Seshadripuram College', 'Bangalore', 'Seshadripuram, Bangalore', '080-2296-2281', 'https://www.spmcollege.ac.in', 4.30, '1.5 - 3.2 LPA', 'BCom, BBA, MBA');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'akash', 'varma4945@gmail.com', 'sf,bsdfjhbsdkfmlsdnfjdbsf', '2025-04-15 02:31:52'),
(3, 'Rajkumar', 'raju@gmail.com', 'This website is Great!!!', '2025-04-16 15:29:03'),
(4, 'akash', 'Akash.verma@ervon.tech', 'aldnaskdbadbs', '2025-04-16 16:39:55'),
(5, 'rohit', 'rohit@gmail.com', 'asdjhvjhdbadns', '2025-04-16 16:40:48'),
(6, 'dinesh', 'dinesh@gmail.com', 'sfkasjnkds', '2025-04-16 16:43:21'),
(7, 'asdfdfdf', 'sadd@gmail.com', 'adkhvjad', '2025-04-16 17:25:30'),
(8, 'vishal', 'vishal@gmail.com', 'skdbkasd', '2025-04-16 17:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `price_range` varchar(50) NOT NULL,
  `facilities` text NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `fees` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `name`, `city`, `address`, `contact_number`, `price_range`, `facilities`, `rating`, `type`, `fees`) VALUES
(1, 'Skyline Boys Hostel', 'Mumbai', 'Malad West, Mumbai', '9876543210', '₹7000 - ₹12000', 'Wi-Fi, Laundry, Mess, CCTV', 4.20, NULL, NULL),
(2, 'Comfort Stay Hostel', 'Mumbai', 'Kandivali East, Mumbai', '9823456710', '₹8000 - ₹11000', 'Wi-Fi, Study Room, AC Rooms', 4.00, NULL, NULL),
(3, 'Elite PG Hostel', 'Mumbai', 'Borivali West, Mumbai', '9834567890', '₹8500 - ₹13000', 'Wi-Fi, Mess, Cleaning, Security', 4.30, NULL, NULL),
(4, 'Metro Youth Hostel', 'Mumbai', 'Andheri East, Mumbai', '9812345670', '₹7500 - ₹11500', 'Wi-Fi, Gym, Hot Water, Security', 4.10, NULL, NULL),
(5, 'Green Nest Hostel', 'Mumbai', 'Vile Parle, Mumbai', '9908765432', '₹9000 - ₹14000', 'Laundry, Food, Wi-Fi, AC', 4.50, NULL, NULL),
(6, 'Ocean View Hostel', 'Mumbai', 'Juhu Beach, Mumbai', '9876543206', '₹4700-₹5700', 'WiFi, Gym, Pool', 4.40, NULL, NULL),
(7, 'The Coastal Inn', 'Mumbai', 'Dadar West, Mumbai', '9876543207', '₹5200-₹6200', 'WiFi, Laundry, TV', 4.30, NULL, NULL),
(8, 'Bandra Bay Hostel', 'Mumbai', 'Kandivali West, Mumbai', '9876543208', '₹3800-₹4800', 'WiFi, AC', 3.80, NULL, NULL),
(9, 'Sea Breeze Hostel', 'Mumbai', 'Worli Sea Face, Mumbai', '9876543209', '₹5400-₹6400', 'WiFi, Pool, Laundry', 4.70, NULL, NULL),
(10, 'Breeze Inn Hostel', 'Mumbai', 'Bandra Kurla Complex, Mumbai', '9876543210', '₹5600-₹6600', 'WiFi, AC, Pool, Gym', 4.80, NULL, NULL),
(11, 'Gateway Hostel', 'Mumbai', 'Lower Parel West, Mumbai', '9876543211', '₹4900-₹5900', 'WiFi, AC, 24/7 Security', 4.00, NULL, NULL),
(12, 'Greenfields Hostel', 'Mumbai', 'Vashi, Navi Mumbai', '9876543212', '₹4200-₹5200', 'WiFi, Laundry', 4.20, NULL, NULL),
(13, 'Silver Sands Hostel', 'Mumbai', 'Thane, Mumbai', '9876543213', '₹4300-₹5300', 'WiFi, AC, Gym', 4.30, NULL, NULL),
(14, 'Sunnydale Hostel', 'Mumbai', 'Dombivli, Mumbai', '9876543214', '₹4500-₹5500', 'WiFi, Pool', 4.40, NULL, NULL),
(15, 'Mountain View Hostel', 'Mumbai', 'Kalyan, Mumbai', '9876543215', '₹4800-₹5800', 'WiFi, AC, Laundry', 4.10, NULL, NULL),
(16, 'Hilltop Hostel', 'Mumbai', 'Powai, Mumbai', '9876543216', '₹4200-₹5200', 'WiFi, AC, Laundry', 4.30, NULL, NULL),
(17, 'Riverfront Hostel', 'Mumbai', 'Bhayandar, Mumbai', '9876543217', '₹4600-₹5600', 'WiFi, 24/7 Security', 4.10, NULL, NULL),
(18, 'West End Hostel', 'Mumbai', 'Malad West, Mumbai', '9876543218', '₹4800-₹5800', 'WiFi, AC', 4.00, NULL, NULL),
(19, 'Ocean Breeze Hostel', 'Mumbai', 'Vile Parle East, Mumbai', '9876543219', '₹5500-₹6500', 'WiFi, Gym, Laundry', 4.50, NULL, NULL),
(20, 'City Central Hostel', 'Mumbai', 'Bandra West, Mumbai', '9876543220', '₹4000-₹5000', 'WiFi, 24/7 Security, TV', 4.20, NULL, NULL),
(21, 'Cityscape Hostel', 'Mumbai', 'Santacruz East, Mumbai', '9876543221', '₹5200-₹6200', 'WiFi, Pool, Laundry', 4.30, NULL, NULL),
(22, 'Golden Sands Hostel', 'Mumbai', 'Worli, Mumbai', '9876543222', '₹5000-₹6000', 'WiFi, AC, Gym', 4.40, NULL, NULL),
(23, 'Skyline Hostel', 'Mumbai', 'Juhu, Mumbai', '9876543223', '₹5500-₹6500', 'WiFi, AC, Pool, Gym', 4.70, NULL, NULL),
(24, 'Harbour View Hostel', 'Mumbai', 'Lower Parel, Mumbai', '9876543224', '₹5100-₹6100', 'WiFi, 24/7 Security', 4.20, NULL, NULL),
(25, 'Seaview Hostel', 'Mumbai', 'Kandivali East, Mumbai', '9876543225', '₹4600-₹5600', 'WiFi, Laundry', 4.00, NULL, NULL),
(26, 'Sunset Hostel', 'Mumbai', 'Malad East, Mumbai', '9876543226', '₹4800-₹5800', 'WiFi, TV, AC', 4.10, NULL, NULL),
(27, 'Tropical Hostel', 'Mumbai', 'Borivali East, Mumbai', '9876543227', '₹4700-₹5700', 'WiFi, Gym, Pool', 4.30, NULL, NULL),
(28, 'Skyline Inn Hostel', 'Mumbai', 'Dadar East, Mumbai', '9876543228', '₹4900-₹5900', 'WiFi, 24/7 Security', 4.20, NULL, NULL),
(29, 'Sunshine Hostel', 'Mumbai', 'Thane West, Mumbai', '9876543229', '₹5100-₹6100', 'WiFi, AC, Laundry', 4.40, NULL, NULL),
(30, 'Riverbank Hostel', 'Mumbai', 'Bandra East, Mumbai', '9876543230', '₹5300-₹6300', 'WiFi, Pool, Laundry', 4.60, NULL, NULL),
(31, 'Golden Coast Hostel', 'Mumbai', 'Kandivali West, Mumbai', '9876543231', '₹4500-₹5500', 'WiFi, Gym, TV', 4.20, NULL, NULL),
(32, 'Oceanfront Hostel', 'Mumbai', 'Worli West, Mumbai', '9876543232', '₹4800-₹5800', 'WiFi, AC, 24/7 Security', 4.10, NULL, NULL),
(33, 'City Horizon Hostel', 'Mumbai', 'Juhu West, Mumbai', '9876543233', '₹4600-₹5600', 'WiFi, Gym, Pool', 4.50, NULL, NULL),
(34, 'Moonlight Hostel', 'Mumbai', 'Bhayandar West, Mumbai', '9876543234', '₹5000-₹6000', 'WiFi, Laundry', 4.20, NULL, NULL),
(35, 'Silverline Hostel', 'Mumbai', 'Vile Parle West, Mumbai', '9876543235', '₹5300-₹6300', 'WiFi, AC, Gym, Pool', 4.80, NULL, NULL),
(36, 'Sky View Hostel', 'Mumbai', 'Andheri West, Mumbai', '9876543236', '₹4900-₹5900', 'WiFi, Pool, Gym', 4.30, NULL, NULL),
(37, 'Sunrise Hostel', 'Mumbai', 'Vashi, Navi Mumbai', '9876543237', '₹4600-₹5600', 'WiFi, Laundry, TV', 4.00, NULL, NULL),
(38, 'Riverside Hostel', 'Mumbai', 'Borivali West, Mumbai', '9876543238', '₹5200-₹6200', 'WiFi, Gym, AC', 4.20, NULL, NULL),
(39, 'Lakeside Hostel', 'Mumbai', 'Mulund West, Mumbai', '9876543239', '₹5400-₹6400', 'WiFi, Laundry, Pool', 4.40, NULL, NULL),
(40, 'The Grand Hostel', 'Mumbai', 'Chembur, Mumbai', '9876543240', '₹4800-₹5800', 'WiFi, Gym, 24/7 Security', 4.50, NULL, NULL),
(41, 'Beachside Hostel', 'Mumbai', 'Versova, Mumbai', '9876543241', '₹4700-₹5700', 'WiFi, AC, TV', 4.30, NULL, NULL),
(42, 'Palm Grove Hostel', 'Mumbai', 'Kandivali East, Mumbai', '9876543242', '₹5200-₹6200', 'WiFi, Laundry, Gym', 4.10, NULL, NULL),
(43, 'Blue Ocean Hostel', 'Mumbai', 'Dadar West, Mumbai', '9876543243', '₹5500-₹6500', 'WiFi, AC, Pool', 4.60, NULL, NULL),
(44, 'Golden Palms Hostel', 'Mumbai', 'Lower Parel East, Mumbai', '9876543244', '₹4900-₹5900', 'WiFi, Gym, Laundry', 4.30, NULL, NULL),
(45, 'Seabreeze Hostel', 'Mumbai', 'Vile Parle East, Mumbai', '9876543245', '₹4800-₹5800', 'WiFi, 24/7 Security', 4.00, NULL, NULL),
(46, 'Starry Night Hostel', 'Mumbai', 'Goregaon West, Mumbai', '9876543246', '₹4700-₹5700', 'WiFi, Laundry', 4.20, NULL, NULL),
(47, 'Sunny Bay Hostel', 'Mumbai', 'Malad West, Mumbai', '9876543247', '₹5100-₹6100', 'WiFi, Pool, Gym', 4.50, NULL, NULL),
(48, 'Mountainview Hostel', 'Mumbai', 'Andheri East, Mumbai', '9876543248', '₹4900-₹5900', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(49, 'Lighthouse Hostel', 'Mumbai', 'Bandra East, Mumbai', '9876543249', '₹4600-₹5600', 'WiFi, Pool, TV', 4.10, NULL, NULL),
(50, 'Coastal Retreat Hostel', 'Mumbai', 'Versova Beach, Mumbai', '9876543250', '₹5300-₹6300', 'WiFi, Gym, Laundry', 4.30, NULL, NULL),
(51, 'The Red Maple Hostel', 'Delhi', 'Karol Bagh, Delhi', '9876543350', '₹5000-₹6000', 'WiFi, Laundry, AC', 4.50, NULL, NULL),
(52, 'Zostel Delhi', 'Delhi', 'Paharganj, Delhi', '9876543351', '₹4000-₹5000', 'WiFi, Laundry, Gym', 4.30, NULL, NULL),
(53, 'GoStops Delhi', 'Delhi', 'Bangalore Delhi Road, Delhi', '9876543352', '₹3500-₹4500', 'WiFi, Laundry, Security', 4.20, NULL, NULL),
(54, 'Backpacker Panda', 'Delhi', 'Connaught Place, Delhi', '9876543353', '₹4000-₹5000', 'WiFi, Laundry, AC', 4.40, NULL, NULL),
(55, 'The Hosteller Delhi', 'Delhi', 'Hauz Khas, Delhi', '9876543354', '₹4500-₹5500', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(56, 'Sarai Hostel', 'Delhi', 'Sarai Kale Khan, Delhi', '9876543355', '₹4000-₹5000', 'WiFi, Laundry, TV', 4.10, NULL, NULL),
(57, 'The Social Hostel', 'Delhi', 'Saket, Delhi', '9876543356', '₹4500-₹5500', 'WiFi, Laundry, Gym', 4.20, NULL, NULL),
(58, 'The Madpackers Hostel', 'Delhi', 'Vasant Kunj, Delhi', '9876543357', '₹5000-₹6000', 'WiFi, Laundry, Security', 4.50, NULL, NULL),
(59, 'Hostel LaVie', 'Delhi', 'Nehru Place, Delhi', '9876543358', '₹4000-₹5000', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(60, 'The Zostel Delhi', 'Delhi', 'Saket, Delhi', '9876543359', '₹3500-₹4500', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(61, 'Blue Door Hostel', 'Delhi', 'Malviya Nagar, Delhi', '9876543360', '₹4500-₹5500', 'WiFi, Laundry, TV', 4.50, NULL, NULL),
(62, 'The Hostel Crowd', 'Delhi', 'Vasant Vihar, Delhi', '9876543361', '₹4000-₹5000', 'WiFi, Laundry, AC', 4.20, NULL, NULL),
(63, 'The Stay Hostel', 'Delhi', 'Rajouri Garden, Delhi', '9876543362', '₹3800-₹4800', 'WiFi, Laundry, Security', 4.40, NULL, NULL),
(64, 'Saanvi Residency', 'Delhi', 'Okhla, Delhi', '9876543363', '₹4600-₹5600', 'WiFi, Gym, Laundry', 4.10, NULL, NULL),
(65, 'Metro Stay Hostel', 'Delhi', 'Dwarka, Delhi', '9876543364', '₹4200-₹5200', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(66, 'Abode Hostel', 'Delhi', 'Pitampura, Delhi', '9876543365', '₹3900-₹4900', 'WiFi, Laundry, TV', 4.50, NULL, NULL),
(67, 'Himalayan Hostel', 'Delhi', 'Chandni Chowk, Delhi', '9876543366', '₹4000-₹5000', 'WiFi, Laundry, Gym', 4.20, NULL, NULL),
(68, 'Sunset View Hostel', 'Delhi', 'Kailash Colony, Delhi', '9876543367', '₹4400-₹5400', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(69, 'Eden Hostel', 'Delhi', 'Lajpat Nagar, Delhi', '9876543368', '₹4200-₹5200', 'WiFi, Laundry, AC', 4.40, NULL, NULL),
(70, 'Nest Hostel', 'Delhi', 'Jangpura, Delhi', '9876543369', '₹4600-₹5600', 'WiFi, Laundry, TV', 4.10, NULL, NULL),
(71, 'City View Hostel', 'Delhi', 'Azadpur, Delhi', '9876543370', '₹4900-₹5900', 'WiFi, Laundry, Pool', 4.50, NULL, NULL),
(72, 'The Space Hostel', 'Delhi', 'Munirka, Delhi', '9876543371', '₹4700-₹5700', 'WiFi, Laundry, Gym', 4.30, NULL, NULL),
(73, 'Traveler’s Retreat', 'Delhi', 'Dwarka, Delhi', '9876543372', '₹4400-₹5400', 'WiFi, Laundry, TV', 4.40, NULL, NULL),
(74, 'Sunshine Inn Hostel', 'Delhi', 'Janakpuri, Delhi', '9876543373', '₹4100-₹5100', 'WiFi, Laundry, Gym', 4.50, NULL, NULL),
(75, 'Orange Hostel', 'Delhi', 'Darya Ganj, Delhi', '9876543374', '₹4500-₹5500', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(76, 'Silver Sands Hostel', 'Delhi', 'Sarai Kale Khan, Delhi', '9876543375', '₹4600-₹5600', 'WiFi, Laundry, Pool', 4.20, NULL, NULL),
(77, 'The Gateway Hostel', 'Delhi', 'Rajouri Garden, Delhi', '9876543376', '₹4000-₹5000', 'WiFi, Laundry, TV', 4.10, NULL, NULL),
(78, 'Uptown Hostel', 'Delhi', 'Hauz Khas, Delhi', '9876543377', '₹4200-₹5200', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(79, 'Hostel Heaven', 'Delhi', 'Connaught Place, Delhi', '9876543378', '₹4000-₹5000', 'WiFi, Laundry, Pool', 4.50, NULL, NULL),
(80, 'Sunrise Hostel', 'Delhi', 'Karol Bagh, Delhi', '9876543379', '₹4300-₹5300', 'WiFi, Laundry, TV', 4.20, NULL, NULL),
(81, 'Comfort Zone Hostel', 'Delhi', 'Rohini, Delhi', '9876543380', '₹4500-₹5500', 'WiFi, Laundry, AC', 4.40, NULL, NULL),
(82, 'Happy Stay Hostel', 'Delhi', 'Vasant Vihar, Delhi', '9876543381', '₹4400-₹5400', 'WiFi, Laundry, Security', 4.30, NULL, NULL),
(83, 'City Living Hostel', 'Delhi', 'Jor Bagh, Delhi', '9876543382', '₹4200-₹5200', 'WiFi, Laundry, TV', 4.50, NULL, NULL),
(84, 'The City Hostel', 'Delhi', 'Chandni Chowk, Delhi', '9876543383', '₹4800-₹5800', 'WiFi, Laundry, Pool', 4.10, NULL, NULL),
(85, 'Blue Skies Hostel', 'Delhi', 'Okhla, Delhi', '9876543384', '₹4500-₹5500', 'WiFi, Laundry, Gym', 4.20, NULL, NULL),
(86, 'Green Field Hostel', 'Delhi', 'Lajpat Nagar, Delhi', '9876543385', '₹4200-₹5200', 'WiFi, Laundry, AC', 4.40, NULL, NULL),
(87, 'The Hangout Hostel', 'Delhi', 'Dwarka, Delhi', '9876543386', '₹4300-₹5300', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(88, 'Eco Stay Hostel', 'Delhi', 'Saket, Delhi', '9876543387', '₹4400-₹5400', 'WiFi, Laundry, Gym', 4.50, NULL, NULL),
(89, 'Relax PG', 'Delhi', 'Janakpuri, Delhi', '9876543388', '₹4500-₹5500', 'WiFi, Laundry, AC', 4.20, NULL, NULL),
(90, 'Budget Hostel', 'Delhi', 'Rajouri Garden, Delhi', '9876543389', '₹4000-₹5000', 'WiFi, Laundry, Pool', 4.40, NULL, NULL),
(91, 'The Nomads Hostel', 'Delhi', 'Connaught Place, Delhi', '9876543390', '₹4600-₹5600', 'WiFi, Laundry, Gym', 4.30, NULL, NULL),
(92, 'Yatra Hostel', 'Delhi', 'Paharganj, Delhi', '9876543391', '₹4200-₹5200', 'WiFi, Laundry, AC', 4.20, NULL, NULL),
(93, 'Shanti Hostel', 'Delhi', 'Vasant Kunj, Delhi', '9876543392', '₹4300-₹5300', 'WiFi, Laundry, Security', 4.40, NULL, NULL),
(94, 'The Peace Hostel', 'Delhi', 'Hauz Khas, Delhi', '9876543393', '₹4200-₹5200', 'WiFi, Laundry, Pool', 4.10, NULL, NULL),
(95, 'Cultural Hostel', 'Delhi', 'Karol Bagh, Delhi', '9876543394', '₹4500-₹5500', 'WiFi, Laundry, Gym', 4.30, NULL, NULL),
(96, 'New Age Hostel', 'Delhi', 'Dwarka, Delhi', '9876543395', '₹4000-₹5000', 'WiFi, Laundry, AC', 4.50, NULL, NULL),
(97, 'Luxury Stay Hostel', 'Delhi', 'Lajpat Nagar, Delhi', '9876543396', '₹4700-₹5700', 'WiFi, Laundry, Pool', 4.40, NULL, NULL),
(98, 'Student’s Paradise Hostel', 'Delhi', 'Nehru Place, Delhi', '9876543397', '₹4600-₹5600', 'WiFi, Laundry, TV', 4.20, NULL, NULL),
(99, 'Delhi Dream Hostel', 'Delhi', 'Saket, Delhi', '9876543398', '₹4800-₹5800', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(100, 'The Cosy Hostel', 'Delhi', 'Rajouri Garden, Delhi', '9876543399', '₹4900-₹5900', 'WiFi, Laundry, Pool', 4.50, NULL, NULL),
(101, 'The Hive Hostel', 'Bangalore', 'Indiranagar, Bangalore', '9876543400', '₹4500-₹5500', 'WiFi, Laundry, Gym', 4.50, NULL, NULL),
(102, 'Backpacker Panda', 'Bangalore', 'Koramangala, Bangalore', '9876543401', '₹4200-₹5200', 'WiFi, Laundry, Pool', 4.40, NULL, NULL),
(103, 'Zostel Bangalore', 'Bangalore', 'MG Road, Bangalore', '9876543402', '₹3500-₹4500', 'WiFi, Laundry, AC', 4.20, NULL, NULL),
(104, 'The Madpacker', 'Bangalore', 'Whitefield, Bangalore', '9876543403', '₹4000-₹5000', 'WiFi, Laundry, Gym', 4.30, NULL, NULL),
(105, 'GoStops Bangalore', 'Bangalore', 'Jayanagar, Bangalore', '9876543404', '₹3800-₹4800', 'WiFi, Laundry, TV', 4.40, NULL, NULL),
(106, 'Social Hostel', 'Bangalore', 'Hennur, Bangalore', '9876543405', '₹4500-₹5500', 'WiFi, Laundry, Pool', 4.20, NULL, NULL),
(107, 'The Kormangala Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543406', '₹4000-₹5000', 'WiFi, Laundry, Gym', 4.30, NULL, NULL),
(108, 'The Yellow House', 'Bangalore', 'Koramangala, Bangalore', '9876543407', '₹4500-₹5500', 'WiFi, Laundry, Security', 4.50, NULL, NULL),
(109, 'Urban Stay', 'Bangalore', 'Indiranagar, Bangalore', '9876543408', '₹4200-₹5200', 'WiFi, Laundry, AC', 4.10, NULL, NULL),
(110, 'Bunkyard Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543409', '₹4600-₹5600', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(111, 'Nomadic Hostel', 'Bangalore', 'Indiranagar, Bangalore', '9876543410', '₹4300-₹5300', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(112, 'The Trippy Hostel', 'Bangalore', 'MG Road, Bangalore', '9876543411', '₹4000-₹5000', 'WiFi, Laundry, Security', 4.20, NULL, NULL),
(113, 'The Chill Out Hostel', 'Bangalore', 'Jayanagar, Bangalore', '9876543412', '₹3800-₹4800', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(114, 'Bangalore Backpackers', 'Bangalore', 'Hebbal, Bangalore', '9876543413', '₹4600-₹5600', 'WiFi, Laundry, Pool', 4.50, NULL, NULL),
(115, 'The Hostel Crowd', 'Bangalore', 'Koramangala, Bangalore', '9876543414', '₹4200-₹5200', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(116, 'Koshy Hostel', 'Bangalore', 'MG Road, Bangalore', '9876543415', '₹4500-₹5500', 'WiFi, Laundry, TV', 4.40, NULL, NULL),
(117, 'The Razz Hostel', 'Bangalore', 'Indiranagar, Bangalore', '9876543416', '₹4000-₹5000', 'WiFi, Laundry, Security', 4.30, NULL, NULL),
(118, 'The Hive', 'Bangalore', 'Koramangala, Bangalore', '9876543417', '₹4200-₹5200', 'WiFi, Laundry, Pool', 4.50, NULL, NULL),
(119, 'Stay Inn Hostel', 'Bangalore', 'Jayanagar, Bangalore', '9876543418', '₹4300-₹5300', 'WiFi, Laundry, TV', 4.20, NULL, NULL),
(120, 'Urban Nomads Hostel', 'Bangalore', 'Whitefield, Bangalore', '9876543419', '₹4600-₹5600', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(121, 'Zolo Stay', 'Bangalore', 'Koramangala, Bangalore', '9876543420', '₹3900-₹4900', 'WiFi, Laundry, Gym', 4.10, NULL, NULL),
(122, 'The Nomads Stay', 'Bangalore', 'MG Road, Bangalore', '9876543421', '₹4200-₹5200', 'WiFi, Laundry, Security', 4.50, NULL, NULL),
(123, 'Backpacker Village', 'Bangalore', 'Indiranagar, Bangalore', '9876543422', '₹4500-₹5500', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(124, 'The City Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543423', '₹3800-₹4800', 'WiFi, Laundry, TV', 4.20, NULL, NULL),
(125, 'Sparrow Hostel', 'Bangalore', 'Whitefield, Bangalore', '9876543424', '₹4200-₹5200', 'WiFi, Laundry, Gym', 4.50, NULL, NULL),
(126, 'Blue Lotus Hostel', 'Bangalore', 'Jayanagar, Bangalore', '9876543425', '₹4300-₹5300', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(127, 'Chillax Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543426', '₹4600-₹5600', 'WiFi, Laundry, Pool', 4.40, NULL, NULL),
(128, 'Bunk Hostel', 'Bangalore', 'Indiranagar, Bangalore', '9876543427', '₹4500-₹5500', 'WiFi, Laundry, Security', 4.20, NULL, NULL),
(129, 'Saffron Hostel', 'Bangalore', 'MG Road, Bangalore', '9876543428', '₹4000-₹5000', 'WiFi, Laundry, TV', 4.30, NULL, NULL),
(130, 'The Urban House', 'Bangalore', 'Jayanagar, Bangalore', '9876543429', '₹4200-₹5200', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(131, 'The Zostel', 'Bangalore', 'Whitefield, Bangalore', '9876543430', '₹3900-₹4900', 'WiFi, Laundry, Pool', 4.50, NULL, NULL),
(132, 'Lemon Tree Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543431', '₹4500-₹5500', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(133, 'Hostel 99', 'Bangalore', 'MG Road, Bangalore', '9876543432', '₹4000-₹5000', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(134, 'Hikers Hostel', 'Bangalore', 'Jayanagar, Bangalore', '9876543433', '₹4200-₹5200', 'WiFi, Laundry, Security', 4.20, NULL, NULL),
(135, 'Sundown Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543434', '₹4500-₹5500', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(136, 'The Cubes Hostel', 'Bangalore', 'Whitefield, Bangalore', '9876543435', '₹4600-₹5600', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(137, 'Gravity Hostel', 'Bangalore', 'Indiranagar, Bangalore', '9876543436', '₹4300-₹5300', 'WiFi, Laundry, TV', 4.20, NULL, NULL),
(138, 'Sky Hostel', 'Bangalore', 'MG Road, Bangalore', '9876543437', '₹4000-₹5000', 'WiFi, Laundry, Pool', 4.30, NULL, NULL),
(139, 'Happy Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543438', '₹4200-₹5200', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(140, 'The Workaholics Hostel', 'Bangalore', 'Jayanagar, Bangalore', '9876543439', '₹4500-₹5500', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(141, 'Sparrow Hostel', 'Bangalore', 'Whitefield, Bangalore', '9876543440', '₹3800-₹4800', 'WiFi, Laundry, Pool', 4.20, NULL, NULL),
(142, 'Dream Hostel', 'Bangalore', 'Indiranagar, Bangalore', '9876543441', '₹4300-₹5300', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(143, 'Skyline Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543442', '₹4200-₹5200', 'WiFi, Laundry, AC', 4.30, NULL, NULL),
(144, 'Urban Travelers Hostel', 'Bangalore', 'MG Road, Bangalore', '9876543443', '₹4600-₹5600', 'WiFi, Laundry, TV', 4.50, NULL, NULL),
(145, 'Backpackers Den', 'Bangalore', 'Whitefield, Bangalore', '9876543444', '₹4200-₹5200', 'WiFi, Laundry, Pool', 4.40, NULL, NULL),
(146, 'The Wanderers Hostel', 'Bangalore', 'Koramangala, Bangalore', '9876543445', '₹4500-₹5500', 'WiFi, Laundry, Gym', 4.20, NULL, NULL),
(147, 'Hostel Nook', 'Bangalore', 'Indiranagar, Bangalore', '9876543446', '₹4300-₹5300', 'WiFi, Laundry, TV', 4.30, NULL, NULL),
(148, 'G9 Hostel', 'Bangalore', 'MG Road, Bangalore', '9876543447', '₹4600-₹5600', 'WiFi, Laundry, Pool', 4.50, NULL, NULL),
(149, 'The Explorer Hostel', 'Bangalore', 'Whitefield, Bangalore', '9876543448', '₹4200-₹5200', 'WiFi, Laundry, Gym', 4.40, NULL, NULL),
(150, 'The Nomadic Tribe', 'Bangalore', 'Koramangala, Bangalore', '9876543449', '₹4000-₹5000', 'WiFi, Laundry, AC', 4.30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pgs`
--

CREATE TABLE `pgs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `price_range` varchar(50) NOT NULL,
  `facilities` text NOT NULL,
  `rating` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pgs`
--

INSERT INTO `pgs` (`id`, `name`, `city`, `address`, `contact_number`, `price_range`, `facilities`, `rating`) VALUES
(1, 'Urban Nest PG', 'Mumbai', 'Kandivali West, Mumbai', '9876543101', '₹6000-₹7000', 'WiFi, Laundry, TV, Security', 4.20),
(2, 'Sunset View PG', 'Mumbai', 'Andheri East, Mumbai', '9876543102', '₹7000-₹8000', 'WiFi, AC, Gym, Security', 4.50),
(3, 'Coastal Breeze PG', 'Mumbai', 'Borivali West, Mumbai', '9876543103', '₹6500-₹7500', 'WiFi, Pool, Laundry', 4.30),
(4, 'Golden Sands PG', 'Mumbai', 'Malad East, Mumbai', '9876543104', '₹6800-₹7800', 'WiFi, AC, TV', 4.40),
(5, 'City Retreat PG', 'Mumbai', 'Vile Parle East, Mumbai', '9876543105', '₹7500-₹8500', 'WiFi, Laundry, Gym, AC', 4.60),
(6, 'Skyline PG', 'Mumbai', 'Powai, Mumbai', '9876543106', '₹6900-₹7900', 'WiFi, Laundry, TV', 4.30),
(7, 'Urban Stay PG', 'Mumbai', 'Kandivali East, Mumbai', '9876543206', '₹6500-₹7500', 'WiFi, Laundry, TV, Security', 4.30),
(8, 'City Lights PG', 'Mumbai', 'Borivali West, Mumbai', '9876543207', '₹7000-₹8000', 'WiFi, AC, Gym, 24/7 Security', 4.40),
(9, 'Greenwood PG', 'Mumbai', 'Malad East, Mumbai', '9876543208', '₹6000-₹7000', 'WiFi, Laundry, TV', 4.10),
(10, 'Comfort Stay PG', 'Mumbai', 'Dadar West, Mumbai', '9876543209', '₹6800-₹7800', 'WiFi, AC, 24/7 Security', 4.50),
(11, 'Royal Comfort PG', 'Mumbai', 'Andheri West, Mumbai', '9876543210', '₹7500-₹8500', 'WiFi, Gym, Laundry, AC', 4.60),
(12, 'Golden Nest PG', 'Mumbai', 'Vile Parle East, Mumbai', '9876543211', '₹6700-₹7700', 'WiFi, Laundry, TV', 4.20),
(13, 'Silver Sands PG', 'Mumbai', 'Powai, Mumbai', '9876543212', '₹7200-₹8200', 'WiFi, AC, Security, Gym', 4.40),
(14, 'Sunshine PG', 'Mumbai', 'Thane West, Mumbai', '9876543213', '₹6500-₹7500', 'WiFi, Laundry, Pool', 4.30),
(15, 'Urban Comfort PG', 'Mumbai', 'Kalyan West, Mumbai', '9876543214', '₹6700-₹7700', 'WiFi, AC, 24/7 Security', 4.20),
(16, 'City Horizon PG', 'Mumbai', 'Bandra East, Mumbai', '9876543215', '₹7100-₹8100', 'WiFi, Laundry, Gym', 4.30),
(17, 'Coastal View PG', 'Mumbai', 'Vashi, Navi Mumbai', '9876543216', '₹6900-₹7900', 'WiFi, AC, Security', 4.50),
(18, 'Ocean Breeze PG', 'Mumbai', 'Bhayandar East, Mumbai', '9876543217', '₹6400-₹7400', 'WiFi, Laundry, TV', 4.10),
(19, 'Comfort Zone PG', 'Mumbai', 'Kandivali West, Mumbai', '9876543218', '₹6800-₹7800', 'WiFi, Gym, Laundry', 4.30),
(20, 'Green Retreat PG', 'Mumbai', 'Dombivli East, Mumbai', '9876543219', '₹7100-₹8100', 'WiFi, Pool, Security', 4.20),
(21, 'Blue Bay PG', 'Mumbai', 'Malad West, Mumbai', '9876543220', '₹7400-₹8400', 'WiFi, Laundry, TV, Security', 4.50),
(22, 'Sunset View PG', 'Mumbai', 'Vile Parle West, Mumbai', '9876543221', '₹6700-₹7700', 'WiFi, AC, Gym', 4.30),
(23, 'Golden Bay PG', 'Mumbai', 'Vashi, Navi Mumbai', '9876543222', '₹7000-₹8000', 'WiFi, Pool, Laundry', 4.40),
(24, 'Coastal Palms PG', 'Mumbai', 'Andheri East, Mumbai', '9876543223', '₹6800-₹7800', 'WiFi, Laundry, TV', 4.10),
(25, 'Royal City PG', 'Mumbai', 'Lower Parel West, Mumbai', '9876543224', '₹7100-₹8100', 'WiFi, Gym, Laundry', 4.20),
(26, 'Moonlight PG', 'Mumbai', 'Malad East, Mumbai', '9876543225', '₹7300-₹8300', 'WiFi, AC, Pool', 4.40),
(27, 'Sunrise View PG', 'Mumbai', 'Borivali West, Mumbai', '9876543226', '₹7600-₹8600', 'WiFi, Laundry, Gym', 4.50),
(28, 'Lakeside PG', 'Mumbai', 'Bhayandar West, Mumbai', '9876543227', '₹7100-₹8100', 'WiFi, AC, Laundry', 4.20),
(29, 'Sunny Meadows PG', 'Mumbai', 'Bandra West, Mumbai', '9876543228', '₹6500-₹7500', 'WiFi, Gym, Security', 4.30),
(30, 'Urban Bliss PG', 'Mumbai', 'Andheri West, Mumbai', '9876543229', '₹6800-₹7800', 'WiFi, Pool, Laundry', 4.10),
(31, 'Golden Sands PG', 'Mumbai', 'Goregaon West, Mumbai', '9876543230', '₹7400-₹8400', 'WiFi, AC, TV, Gym', 4.60),
(32, 'Oceanic PG', 'Mumbai', 'Powai, Mumbai', '9876543231', '₹6800-₹7800', 'WiFi, Laundry, Gym', 4.20),
(33, 'Sunshine Beach PG', 'Mumbai', 'Vile Parle East, Mumbai', '9876543232', '₹7000-₹8000', 'WiFi, Pool, 24/7 Security', 4.50),
(34, 'Serenity PG', 'Mumbai', 'Malad West, Mumbai', '9876543233', '₹6500-₹7500', 'WiFi, Laundry, Gym', 4.30),
(35, 'Star View PG', 'Mumbai', 'Goregaon East, Mumbai', '9876543234', '₹7100-₹8100', 'WiFi, AC, Pool', 4.40),
(36, 'Silver Grove PG', 'Mumbai', 'Borivali East, Mumbai', '9876543235', '₹6700-₹7700', 'WiFi, TV, Laundry', 4.10),
(37, 'City Escape PG', 'Mumbai', 'Malad East, Mumbai', '9876543236', '₹7400-₹8400', 'WiFi, Gym, Pool', 4.20),
(38, 'Golden Horizon PG', 'Mumbai', 'Vashi, Navi Mumbai', '9876543237', '₹7000-₹8000', 'WiFi, Laundry, AC', 4.30),
(39, 'Sunset Bay PG', 'Mumbai', 'Bandra West, Mumbai', '9876543238', '₹6900-₹7900', 'WiFi, Laundry, TV', 4.20),
(40, 'Pacific Coast PG', 'Mumbai', 'Andheri West, Mumbai', '9876543239', '₹7600-₹8600', 'WiFi, Laundry, Gym', 4.40),
(41, 'Sunrise Terrace PG', 'Mumbai', 'Vile Parle West, Mumbai', '9876543240', '₹7400-₹8400', 'WiFi, AC, Pool', 4.30),
(42, 'Ocean Breeze PG', 'Mumbai', 'Kandivali East, Mumbai', '9876543241', '₹6700-₹7700', 'WiFi, TV, Laundry', 4.20),
(43, 'Blue Lagoon PG', 'Mumbai', 'Thane West, Mumbai', '9876543242', '₹7000-₹8000', 'WiFi, Laundry, AC', 4.50),
(44, 'City Heights PG', 'Mumbai', 'Bandra East, Mumbai', '9876543243', '₹6800-₹7800', 'WiFi, Gym, Security', 4.10),
(45, 'Shining Star PG', 'Mumbai', 'Malad West, Mumbai', '9876543244', '₹6500-₹7500', 'WiFi, Laundry, TV', 4.20),
(46, 'Sunset Shores PG', 'Mumbai', 'Goregaon East, Mumbai', '9876543245', '₹7100-₹8100', 'WiFi, AC, Pool', 4.30),
(47, 'Urban Life PG', 'Mumbai', 'Powai, Mumbai', '9876543246', '₹6700-₹7700', 'WiFi, Laundry, Security', 4.40),
(48, 'Green Hills PG', 'Mumbai', 'Vile Parle East, Mumbai', '9876543247', '₹6900-₹7900', 'WiFi, Gym, Pool', 4.20),
(49, 'Coastal Breeze PG', 'Mumbai', 'Andheri East, Mumbai', '9876543248', '₹7000-₹8000', 'WiFi, Laundry, TV', 4.50),
(50, 'Golden Coast PG', 'Mumbai', 'Malad East, Mumbai', '9876543249', '₹7500-₹8500', 'WiFi, Laundry, Gym', 4.30),
(51, 'Urban Comfort PG', 'Delhi', 'Saket, Delhi', '9876543250', '₹7500-₹8500', 'WiFi, Laundry, TV', 4.30),
(52, 'Luxe Stay PG', 'Delhi', 'Vasant Kunj, Delhi', '9876543251', '₹7200-₹8200', 'WiFi, Gym, AC, Pool', 4.60),
(53, 'Green Park PG', 'Delhi', 'Green Park, Delhi', '9876543252', '₹7000-₹8000', 'WiFi, Laundry, TV', 4.40),
(54, 'City Lights PG', 'Delhi', 'Janakpuri, Delhi', '9876543253', '₹6500-₹7500', 'WiFi, Laundry, Security', 4.30),
(55, 'Sunset View PG', 'Delhi', 'Dwarka, Delhi', '9876543254', '₹6800-₹7800', 'WiFi, Gym, Laundry', 4.50),
(56, 'Royal Comfort PG', 'Delhi', 'Lajpat Nagar, Delhi', '9876543255', '₹6900-₹7900', 'WiFi, AC, Security', 4.40),
(57, 'Coastal Breeze PG', 'Delhi', 'Hauz Khas, Delhi', '9876543256', '₹7100-₹8100', 'WiFi, Laundry, Gym', 4.20),
(58, 'Sunshine View PG', 'Delhi', 'Connaught Place, Delhi', '9876543257', '₹6700-₹7700', 'WiFi, Laundry, TV', 4.10),
(59, 'Silver Sands PG', 'Delhi', 'Karol Bagh, Delhi', '9876543258', '₹7200-₹8200', 'WiFi, Pool, Gym', 4.30),
(60, 'Ocean Breeze PG', 'Delhi', 'Rajouri Garden, Delhi', '9876543259', '₹7500-₹8500', 'WiFi, AC, Laundry', 4.40),
(61, 'Comfort Stay PG', 'Delhi', 'Vikram Vihar, Delhi', '9876543260', '₹6700-₹7700', 'WiFi, Laundry, TV', 4.20),
(62, 'Golden Horizon PG', 'Delhi', 'Greater Kailash, Delhi', '9876543261', '₹7300-₹8300', 'WiFi, Laundry, AC', 4.50),
(63, 'Sunrise PG', 'Delhi', 'Kalkaji, Delhi', '9876543262', '₹6900-₹7900', 'WiFi, Pool, Laundry', 4.30),
(64, 'Coastal View PG', 'Delhi', 'Shahdara, Delhi', '9876543263', '₹7100-₹8100', 'WiFi, Gym, Laundry', 4.20),
(65, 'Golden Bay PG', 'Delhi', 'Pitampura, Delhi', '9876543264', '₹6400-₹7400', 'WiFi, Laundry, TV', 4.10),
(66, 'Urban Nest PG', 'Delhi', 'Sadar Bazar, Delhi', '9876543265', '₹6900-₹7900', 'WiFi, Laundry, Security', 4.30),
(67, 'Star View PG', 'Delhi', 'Paschim Vihar, Delhi', '9876543266', '₹7500-₹8500', 'WiFi, AC, Gym', 4.50),
(68, 'City Retreat PG', 'Delhi', 'Dwarka Mor, Delhi', '9876543267', '₹6700-₹7700', 'WiFi, Laundry, TV', 4.20),
(69, 'Moonlight PG', 'Delhi', 'Vasant Vihar, Delhi', '9876543268', '₹7100-₹8100', 'WiFi, Gym, Laundry', 4.40),
(70, 'Sunset Shores PG', 'Delhi', 'Moti Nagar, Delhi', '9876543269', '₹7200-₹8200', 'WiFi, Pool, Laundry', 4.30),
(71, 'Urban Bliss PG', 'Delhi', 'Okhla, Delhi', '9876543270', '₹7500-₹8500', 'WiFi, Gym, Laundry', 4.60),
(72, 'Silver Coast PG', 'Delhi', 'Mayur Vihar, Delhi', '9876543271', '₹6700-₹7700', 'WiFi, Laundry, TV', 4.20),
(73, 'Coastal Palms PG', 'Delhi', 'Sarai Kale Khan, Delhi', '9876543272', '₹6900-₹7900', 'WiFi, Laundry, AC', 4.30),
(74, 'Golden Sands PG', 'Delhi', 'Vasant Kunj, Delhi', '9876543273', '₹7200-₹8200', 'WiFi, Laundry, Security', 4.40),
(75, 'Oceanic View PG', 'Delhi', 'Lajpat Nagar, Delhi', '9876543274', '₹6900-₹7900', 'WiFi, Gym, Laundry', 4.20),
(76, 'Golden Retreat PG', 'Delhi', 'Rajouri Garden, Delhi', '9876543275', '₹7100-₹8100', 'WiFi, AC, Security', 4.30),
(77, 'Skyline PG', 'Delhi', 'Shahpur Jat, Delhi', '9876543276', '₹6700-₹7700', 'WiFi, Laundry, Pool', 4.10),
(78, 'Comfort Zone PG', 'Delhi', 'Connaught Place, Delhi', '9876543277', '₹7500-₹8500', 'WiFi, Gym, TV', 4.50),
(79, 'Sunshine Haven PG', 'Delhi', 'Malviya Nagar, Delhi', '9876543278', '₹7200-₹8200', 'WiFi, AC, Laundry', 4.30),
(80, 'Star Horizon PG', 'Delhi', 'Kalkaji, Delhi', '9876543279', '₹6800-₹7800', 'WiFi, Gym, Laundry', 4.40),
(81, 'Golden View PG', 'Delhi', 'Vikram Vihar, Delhi', '9876543280', '₹7000-₹8000', 'WiFi, Laundry, TV', 4.20),
(82, 'Royal Sands PG', 'Delhi', 'Dwarka, Delhi', '9876543281', '₹7400-₹8400', 'WiFi, Laundry, Security', 4.40),
(83, 'Ocean View PG', 'Delhi', 'Dwarka Mor, Delhi', '9876543282', '₹6900-₹7900', 'WiFi, Gym, Laundry', 4.10),
(84, 'Sunset Palms PG', 'Delhi', 'Sadar Bazar, Delhi', '9876543283', '₹6700-₹7700', 'WiFi, Laundry, Pool', 4.30),
(85, 'City Palace PG', 'Delhi', 'Shahdara, Delhi', '9876543284', '₹7500-₹8500', 'WiFi, AC, Gym', 4.50),
(86, 'Urban Stay PG', 'Delhi', 'Mayur Vihar, Delhi', '9876543285', '₹7200-₹8200', 'WiFi, Laundry, Security', 4.40),
(87, 'Golden Nest PG', 'Delhi', 'Okhla, Delhi', '9876543286', '₹6700-₹7700', 'WiFi, Gym, Laundry', 4.30),
(88, 'Star Palace PG', 'Delhi', 'Pitampura, Delhi', '9876543287', '₹7100-₹8100', 'WiFi, Laundry, AC', 4.20),
(89, 'Ocean Breeze PG', 'Delhi', 'Saket, Delhi', '9876543288', '₹7500-₹8500', 'WiFi, Pool, Gym', 4.40),
(90, 'Silver Sands PG', 'Delhi', 'Rajouri Garden, Delhi', '9876543289', '₹6900-₹7900', 'WiFi, Laundry, Gym', 4.30),
(91, 'Coastal View PG', 'Delhi', 'Kalkaji, Delhi', '9876543290', '₹7300-₹8300', 'WiFi, Laundry, Security', 4.50),
(92, 'Golden Coast PG', 'Delhi', 'Dwarka, Delhi', '9876543291', '₹6500-₹7500', 'WiFi, Laundry, Pool', 4.10),
(93, 'Urban Edge PG', 'Delhi', 'Janakpuri, Delhi', '9876543292', '₹6700-₹7700', 'WiFi, Laundry, AC', 4.20),
(94, 'Star Retreat PG', 'Delhi', 'Vasant Vihar, Delhi', '9876543293', '₹7000-₹8000', 'WiFi, Pool, Gym', 4.30),
(95, 'Sunrise Bay PG', 'Delhi', 'Vikram Vihar, Delhi', '9876543294', '₹7100-₹8100', 'WiFi, Laundry, Security', 4.40),
(96, 'Ocean Bliss PG', 'Delhi', 'Paschim Vihar, Delhi', '9876543295', '₹6900-₹7900', 'WiFi, Laundry, Gym', 4.20),
(97, 'Golden Sands PG', 'Delhi', 'Pitampura, Delhi', '9876543296', '₹7500-₹8500', 'WiFi, Gym, Pool', 4.50),
(98, 'Sunshine View PG', 'Delhi', 'Karol Bagh, Delhi', '9876543297', '₹7200-₹8200', 'WiFi, AC, Laundry', 4.30),
(99, 'Royal Comfort PG', 'Delhi', 'Rajouri Garden, Delhi', '9876543298', '₹6900-₹7900', 'WiFi, Laundry, TV', 4.40),
(100, 'Coastal Haven PG', 'Delhi', 'Hauz Khas, Delhi', '9876543299', '₹6700-₹7700', 'WiFi, Gym, Laundry', 4.20),
(101, 'Skyline PG', 'Bangalore', 'Koramangala, Bangalore', '9876543300', '₹8000-₹9000', 'WiFi, Laundry, Gym', 4.50),
(102, 'City View PG', 'Bangalore', 'Indiranagar, Bangalore', '9876543301', '₹7500-₹8500', 'WiFi, Laundry, AC', 4.30),
(103, 'Royal Comfort PG', 'Bangalore', 'Jayanagar, Bangalore', '9876543302', '₹7000-₹8000', 'WiFi, Laundry, TV', 4.20),
(104, 'Golden Horizon PG', 'Bangalore', 'Malleswaram, Bangalore', '9876543303', '₹7200-₹8200', 'WiFi, Laundry, Security', 4.40),
(105, 'Urban Nest PG', 'Bangalore', 'BTM Layout, Bangalore', '9876543304', '₹7300-₹8300', 'WiFi, Laundry, AC', 4.30),
(106, 'City Lights PG', 'Bangalore', 'Whitefield, Bangalore', '9876543305', '₹7600-₹8600', 'WiFi, Laundry, Gym', 4.50),
(107, 'Golden Bay PG', 'Bangalore', 'Electronic City, Bangalore', '9876543306', '₹7500-₹8500', 'WiFi, Laundry, TV', 4.20),
(108, 'Comfort Stay PG', 'Bangalore', 'Banashankari, Bangalore', '9876543307', '₹7100-₹8100', 'WiFi, Gym, Laundry', 4.40),
(109, 'Sunshine PG', 'Bangalore', 'RT Nagar, Bangalore', '9876543308', '₹7200-₹8200', 'WiFi, Laundry, Security', 4.30),
(110, 'Coastal View PG', 'Bangalore', 'Ulsoor, Bangalore', '9876543309', '₹7400-₹8400', 'WiFi, Laundry, Gym', 4.50),
(111, 'Royal Nest PG', 'Bangalore', 'Malleshwaram, Bangalore', '9876543310', '₹7700-₹8700', 'WiFi, Laundry, TV', 4.20),
(112, 'Sunset Bay PG', 'Bangalore', 'Kormangala, Bangalore', '9876543311', '₹7000-₹8000', 'WiFi, Laundry, Pool', 4.30),
(113, 'Golden Sands PG', 'Bangalore', 'Indiranagar, Bangalore', '9876543312', '₹7100-₹8100', 'WiFi, Laundry, AC', 4.40),
(114, 'Coastal Breeze PG', 'Bangalore', 'Whitefield, Bangalore', '9876543313', '₹7500-₹8500', 'WiFi, Laundry, Gym', 4.50),
(115, 'Luxe Stay PG', 'Bangalore', 'Koramangala, Bangalore', '9876543314', '₹7700-₹8700', 'WiFi, AC, Laundry', 4.20),
(116, 'Silver Sands PG', 'Bangalore', 'BTM Layout, Bangalore', '9876543315', '₹7200-₹8200', 'WiFi, Laundry, TV', 4.30),
(117, 'City Retreat PG', 'Bangalore', 'HSR Layout, Bangalore', '9876543316', '₹7000-₹8000', 'WiFi, Laundry, Security', 4.20),
(118, 'Urban Comfort PG', 'Bangalore', 'Jayanagar, Bangalore', '9876543317', '₹7500-₹8500', 'WiFi, Gym, Laundry', 4.50),
(119, 'Star View PG', 'Bangalore', 'Malleswaram, Bangalore', '9876543318', '₹7300-₹8300', 'WiFi, Pool, Gym', 4.30),
(120, 'Coastal Palms PG', 'Bangalore', 'Koramangala, Bangalore', '9876543319', '₹7100-₹8100', 'WiFi, Laundry, Security', 4.40),
(121, 'Urban Edge PG', 'Bangalore', 'HSR Layout, Bangalore', '9876543320', '₹6900-₹7900', 'WiFi, Gym, AC', 4.20),
(122, 'Silver Coast PG', 'Bangalore', 'Whitefield, Bangalore', '9876543321', '₹7400-₹8400', 'WiFi, Laundry, TV', 4.30),
(123, 'Golden View PG', 'Bangalore', 'Indiranagar, Bangalore', '9876543322', '₹7100-₹8100', 'WiFi, Gym, Laundry', 4.40),
(124, 'Sunset Shores PG', 'Bangalore', 'Koramangala, Bangalore', '9876543323', '₹6900-₹7900', 'WiFi, Laundry, AC', 4.10),
(125, 'Golden Horizon PG', 'Bangalore', 'Jayanagar, Bangalore', '9876543324', '₹7400-₹8400', 'WiFi, Laundry, Security', 4.30),
(126, 'Urban Stay PG', 'Bangalore', 'BTM Layout, Bangalore', '9876543325', '₹7000-₹8000', 'WiFi, Laundry, Gym', 4.20),
(127, 'Sunrise PG', 'Bangalore', 'Banashankari, Bangalore', '9876543326', '₹7500-₹8500', 'WiFi, AC, Gym', 4.50),
(128, 'Royal Sands PG', 'Bangalore', 'Malleswaram, Bangalore', '9876543327', '₹7400-₹8400', 'WiFi, Laundry, Pool', 4.20),
(129, 'City View PG', 'Bangalore', 'HSR Layout, Bangalore', '9876543328', '₹7100-₹8100', 'WiFi, AC, Laundry', 4.40),
(130, 'Golden Sands PG', 'Bangalore', 'Koramangala, Bangalore', '9876543329', '₹6700-₹7700', 'WiFi, Laundry, TV', 4.30),
(131, 'Coastal Breeze PG', 'Bangalore', 'Indiranagar, Bangalore', '9876543330', '₹7300-₹8300', 'WiFi, Laundry, Gym', 4.40),
(132, 'Luxe View PG', 'Bangalore', 'Jayanagar, Bangalore', '9876543331', '₹7100-₹8100', 'WiFi, Laundry, Pool', 4.30),
(133, 'Star Coast PG', 'Bangalore', 'RT Nagar, Bangalore', '9876543332', '₹7000-₹8000', 'WiFi, Laundry, AC', 4.20),
(134, 'Urban Retreat PG', 'Bangalore', 'Electronic City, Bangalore', '9876543333', '₹7500-₹8500', 'WiFi, Gym, Security', 4.40),
(135, 'Ocean Bliss PG', 'Bangalore', 'Koramangala, Bangalore', '9876543334', '₹7400-₹8400', 'WiFi, Laundry, TV', 4.30),
(136, 'City Lights PG', 'Bangalore', 'HSR Layout, Bangalore', '9876543335', '₹7200-₹8200', 'WiFi, Laundry, Gym', 4.20),
(137, 'Golden View PG', 'Bangalore', 'Whitefield, Bangalore', '9876543336', '₹7000-₹8000', 'WiFi, Laundry, AC', 4.30),
(138, 'Coastal Palms PG', 'Bangalore', 'Malleswaram, Bangalore', '9876543337', '₹6900-₹7900', 'WiFi, Laundry, Pool', 4.50),
(139, 'Silver Sands PG', 'Bangalore', 'Banashankari, Bangalore', '9876543338', '₹7500-₹8500', 'WiFi, AC, Gym', 4.40),
(140, 'Urban Sands PG', 'Bangalore', 'Electronic City, Bangalore', '9876543339', '₹7300-₹8300', 'WiFi, Laundry, Pool', 4.20),
(141, 'Golden Bay PG', 'Bangalore', 'Koramangala, Bangalore', '9876543340', '₹7600-₹8600', 'WiFi, Laundry, Gym', 4.50),
(142, 'City Retreat PG', 'Bangalore', 'BTM Layout, Bangalore', '9876543341', '₹7200-₹8200', 'WiFi, Laundry, AC', 4.30),
(143, 'Sunshine Bay PG', 'Bangalore', 'HSR Layout, Bangalore', '9876543342', '₹7100-₹8100', 'WiFi, Pool, Gym', 4.40),
(144, 'Urban Edge PG', 'Bangalore', 'Whitefield, Bangalore', '9876543343', '₹7000-₹8000', 'WiFi, Laundry, AC', 4.20),
(145, 'Coastal Retreat PG', 'Bangalore', 'Indiranagar, Bangalore', '9876543344', '₹7400-₹8400', 'WiFi, Gym, Laundry', 4.30),
(146, 'Sunset Shores PG', 'Bangalore', 'Koramangala, Bangalore', '9876543345', '₹7300-₹8300', 'WiFi, Laundry, Pool', 4.50),
(147, 'Golden Sands PG', 'Bangalore', 'Banashankari, Bangalore', '9876543346', '₹7600-₹8600', 'WiFi, AC, Gym', 4.40),
(148, 'Coastal Breeze PG', 'Bangalore', 'Jayanagar, Bangalore', '9876543347', '₹7100-₹8100', 'WiFi, Laundry, TV', 4.20),
(149, 'Royal Comfort PG', 'Bangalore', 'Malleswaram, Bangalore', '9876543348', '₹7000-₹8000', 'WiFi, Laundry, Gym', 4.30),
(150, 'Urban Nest PG', 'Bangalore', 'BTM Layout, Bangalore', '9876543349', '₹7400-₹8400', 'WiFi, Pool, AC', 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `type` enum('college','hostel') NOT NULL,
  `item_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `submitted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `type`, `item_id`, `rating`, `comment`, `user_email`, `status`, `submitted_at`) VALUES
(1, 'college', 131, 5, 'bncfxcvkckh', 'varma4945@gmail.com', 'pending', '2025-04-17 00:46:49'),
(2, 'college', 127, 4, 'This college is best', 'aku@gmail.com', 'pending', '2025-04-17 00:52:05'),
(3, 'college', 127, 4, 'This college is best', 'aku@gmail.com', 'pending', '2025-04-17 00:53:51'),
(4, 'college', 131, 3, 'sd,jbsjd sakdnlsd', 'meera@gmail.com', 'pending', '2025-04-17 00:56:53'),
(5, 'college', 168, 1, 'skvdgsad asndasjhvdsgdo', 'innu@gmail.com', 'pending', '2025-04-17 00:59:04'),
(6, 'college', 131, 4, 'hgxdcvjkhuchvbkhgfjc', 'danish@gmail.com', 'pending', '2025-04-17 01:02:52'),
(7, 'college', 85, 5, 'great', 'guddu@gmail.com', 'approved', '2025-04-17 01:06:15'),
(8, 'college', 0, 5, 'alsdbhvsad asd', '', 'rejected', '2025-04-17 12:35:03'),
(9, 'hostel', 0, 4, 'asdbaskd kasndsa', 'pranit@gmail.com', 'rejected', '2025-04-17 12:38:43'),
(10, 'hostel', 0, 3, 'Greate hostel', 'dikhshu@gmail.com', 'approved', '2025-04-17 12:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'akash verma', 'akash@gmail.com', '$2y$10$QmIy1HQAQrrJs02nqjMAueNc444DTBUZx275q9giUELIBCHwx2TIW'),
(2, 'rahul', 'rahul@gmail.com', '$2y$10$CT43o4uGsQ314mxBDd573ePxAAheuxB0LggYmuzy7ZkaKsORmOXoG'),
(3, 'vishal', 'vishal@gmail.com', '$2y$10$9FAphihB1.yDc80V/sU1oeTqwrRPje6ZhJh5S.5IBjFfKOKpOn2y2'),
(4, 'Vibha', 'vibha@gmail.com', '$2y$10$hJpTqN/.bNc2tzszboGhgOzrmCeFX.TDhyRjfXSCFFtfYspxML2O2'),
(5, 'pinky', 'pinky@gmail.com', '$2y$10$OXAGgv/BP/gfNwu4m.QA7e39IYbNSKN5KE61hOL9oSORahnzACpAq'),
(6, 'sahil', 'sahil@gmail.com', '$2y$10$XlbjMlKSDHysuH4VqGD0cuUOCScWnXhfPeem8S.P/nYeV0X9wN0Jm'),
(7, 'meera', 'meera@gmail.com', '$2y$10$p7JUdMZJQtFtNhmx01xCfOo3PYZCkwqm1ZfyfMvS0hHDRoAuYEPDq'),
(8, 'dinesh', 'dinesh@gmail.com', '$2y$10$DzFmsgu1U204uwvBZYVfVuxJHhqzfQJ5z0QaIXUQTT04H4sWGERqa'),
(9, 'rohit', 'rohit@gmail.com', '$2y$10$0V8K3lbNKEhZ8abTNnOuWeD49MBumbfD1fVwfeYV8NMVFWHkoV8c2'),
(10, 'Verma Akash Dinesh', 'aku@gmail.com', '$2y$10$z.bSeUXZu8nTf99AqNyQiu7laADZQ3rcBZ7sDGy3EbEA7IIibRM0O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pgs`
--
ALTER TABLE `pgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `pgs`
--
ALTER TABLE `pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
