-- --------------------------------------------------------
-- Database: `Service Management`
-- Database: `srvcmngmnt`
-- --------------------------------------------------------

-- --------------------------------------------------------
-- Table structure 'Customer'
-- --------------------------------------------------------
CREATE TABLE `cstmr` (
  `cstmr_id` int(11) NOT NULL AUTO_INCREMENT,
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
