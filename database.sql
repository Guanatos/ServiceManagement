-- --------------------------------------------------------
-- Database: `Service Management`
-- Database: `srvcmngmnt`
-- --------------------------------------------------------

-- --------------------------------------------------------
-- Table structure 'Customer'
-- --------------------------------------------------------
CREATE TABLE `cstmr` (
  `cstmr_id` int(10) NOT NULL AUTO_INCREMENT,
  `cstmr_login` varchar(100) COLLATE latin1_general_ci NOT NULL, 
  `cstmr_pass` varchar(225) COLLATE latin1_general_ci DEFAULT NULL,
  `cstmr_address` text COLLATE latin1_general_ci NOT NULL,
  `cstmr_city` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `cstmr_state` char(3) COLLATE latin1_general_ci NOT NULL,
  `cstmr_zip` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `cstmr_country` char(3) COLLATE latin1_general_ci NOT NULL,
  `cstmr_phone` varchar(39) COLLATE latin1_general_ci NOT NULL,
  `cstmr_email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`cstmr_id`),
) DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;

-- --------------------------------------------------------
-- Table structure 'Worker'
-- --------------------------------------------------------
CREATE TABLE `wrkr` (
  `wrkr_id` int(10) NOT NULL AUTO_INCREMENT,
  `wrkr_login` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `wrkr_pass` varchar(225) COLLATE latin1_general_ci DEFAULT NULL,
  `wrkr_address` text COLLATE latin1_general_ci NOT NULL,
  `wrkr_city` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `wrkr_state` char(3) COLLATE latin1_general_ci NOT NULL,
  `wrkr_zip` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `wrkr_country` char(3) COLLATE latin1_general_ci NOT NULL,
  `wrkr_phone` varchar(39) COLLATE latin1_general_ci NOT NULL,
  `wrkr_email` varchar(200) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`wrkr_id`),
) DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;

-- --------------------------------------------------------
-- Table structure 'Skills'
-- --------------------------------------------------------
CREATE TABLE `skills` (
  `skill_id`   int(5) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `skill_desc` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`wrkr_id`),
) DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;

-- --------------------------------------------------------
-- Table structure 'Worker's Skills'
-- --------------------------------------------------------
CREATE TABLE wrkr_skills (
    wrkr_id     int(10)    NOT NULL,
    skill_id    int(5)     NOT NULL,
    ws_rating   int(1)     NOT NULL,
    KEY         (wrkr_id), 
    KEY         (skill_id), 
    FOREIGN KEY (wrkr_id) REFERENCES wrkr (wrkr_id) ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skills (skill_id) ON DELETE CASCADE,
    PRIMARY KEY (wrkr_id, skill_id),
) DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;
