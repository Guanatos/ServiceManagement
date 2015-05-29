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

-- --------------------------------------------------------
-- Table structure 'Worker'
-- --------------------------------------------------------
CREATE TABLE `wrkr` (
  `wrkr_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `skill_desc` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`wrkr_id`),
) DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;

-- --------------------------------------------------------
-- Table structure 'Worker's Skills'
-- --------------------------------------------------------
CREATE TABLE dept_emp (
    emp_no      INT         NOT NULL,
    dept_no     CHAR(4)     NOT NULL,
    from_date   DATE        NOT NULL,
    to_date     DATE        NOT NULL,
    KEY         (emp_no),   -- Build INDEX on this non-unique-value column
    KEY         (dept_no),  -- Build INDEX on this non-unique-value column
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
           -- Cascade DELETE from parent table 'employee' to this child table
           -- If an emp_no is deleted from parent 'employee', all records
           --  involving this emp_no in this child table are also deleted
           -- ON UPDATE CASCADE??
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
           -- ON UPDATE CASCADE??
    PRIMARY KEY (emp_no, dept_no)
           -- Might not be unique?? Need to include from_date
) DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;
