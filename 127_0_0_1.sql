-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 09:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccs_db`
--
CREATE DATABASE IF NOT EXISTS `ccs_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ccs_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_capstone`
--

CREATE TABLE `tbl_capstone` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `abstract` longtext NOT NULL,
  `a1_sname` varchar(150) NOT NULL,
  `a1_fname` varchar(150) NOT NULL,
  `a1_mname` varchar(150) NOT NULL,
  `a1_role` varchar(150) NOT NULL,
  `adviser` varchar(150) NOT NULL,
  `submit_date` date NOT NULL,
  `poster_path` varchar(300) NOT NULL,
  `imrad_path` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_capstone`
--

INSERT INTO `tbl_capstone` (`id`, `title`, `abstract`, `a1_sname`, `a1_fname`, `a1_mname`, `a1_role`, `adviser`, `submit_date`, `poster_path`, `imrad_path`) VALUES
(25, 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'a', '2024-12-20', 'poster/alondra.jpg', 'imrad/2024_01_15 3_37 PM Office Lens.pdf'),
(26, 'bb', 'bb', 'bb', 'bb', 'bb', 'bb', 'bb', '2024-12-25', 'poster/event.jpg', 'imrad/2021_05_17 3_04 pm Office Lens.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `ID` int(11) NOT NULL,
  `student_id` varchar(60) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `firstname` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`ID`, `student_id`, `lastname`, `firstname`) VALUES
(1, '20-0000102', '', ''),
(2, '20-0000104', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_capstone`
--
ALTER TABLE `tbl_capstone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_capstone`
--
ALTER TABLE `tbl_capstone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `srceduc_db`
--
CREATE DATABASE IF NOT EXISTS `srceduc_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srceduc_db`;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `empid` int(11) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `mname` varchar(60) NOT NULL,
  `surname` varchar(60) NOT NULL,
  `department` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  `payslipno` varchar(60) NOT NULL,
  `dtefrom` datetime NOT NULL,
  `dteto` datetime NOT NULL,
  `first` int(11) NOT NULL,
  `second` int(11) NOT NULL,
  `hour` decimal(10,0) NOT NULL,
  `days` decimal(10,0) NOT NULL,
  `basicpay` decimal(10,0) NOT NULL,
  `allowance` decimal(10,0) NOT NULL,
  `overload` decimal(10,0) NOT NULL,
  `longevity` decimal(10,0) NOT NULL,
  `desc1` varchar(60) NOT NULL,
  `other1` decimal(10,0) NOT NULL,
  `desc2` varchar(60) NOT NULL,
  `other2` decimal(10,0) NOT NULL,
  `wtax` decimal(10,0) NOT NULL,
  `sss` decimal(10,0) NOT NULL,
  `med` decimal(10,0) NOT NULL,
  `peraa` decimal(10,0) NOT NULL,
  `pagibig` decimal(10,0) NOT NULL,
  `sssloanid` int(11) NOT NULL,
  `sssloan` decimal(10,0) NOT NULL,
  `peraaloanid` int(11) NOT NULL,
  `peraaloan` decimal(10,0) NOT NULL,
  `pagibigloanid` int(11) NOT NULL,
  `pagibigloan` decimal(10,0) NOT NULL,
  `pagibigloanidc` int(11) NOT NULL,
  `pagibigloanc` decimal(10,0) NOT NULL,
  `caloanid` int(11) NOT NULL,
  `othersid` int(11) NOT NULL,
  `others` decimal(10,0) NOT NULL,
  `ca` decimal(10,0) NOT NULL,
  `eo` decimal(10,0) NOT NULL,
  `late` decimal(10,0) NOT NULL,
  `tardiness` decimal(10,0) NOT NULL,
  `nosabsent` decimal(10,0) NOT NULL,
  `absent` decimal(10,0) NOT NULL,
  `otherdeduction1` varchar(60) NOT NULL,
  `deduction1` decimal(10,0) NOT NULL,
  `otherdeduction2` varchar(60) NOT NULL,
  `deduction2` decimal(10,0) NOT NULL,
  `net` decimal(10,0) NOT NULL,
  `acctno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`empid`, `firstname`, `mname`, `surname`, `department`, `designation`, `status`, `payslipno`, `dtefrom`, `dteto`, `first`, `second`, `hour`, `days`, `basicpay`, `allowance`, `overload`, `longevity`, `desc1`, `other1`, `desc2`, `other2`, `wtax`, `sss`, `med`, `peraa`, `pagibig`, `sssloanid`, `sssloan`, `peraaloanid`, `peraaloan`, `pagibigloanid`, `pagibigloan`, `pagibigloanidc`, `pagibigloanc`, `caloanid`, `othersid`, `others`, `ca`, `eo`, `late`, `tardiness`, `nosabsent`, `absent`, `otherdeduction1`, `deduction1`, `otherdeduction2`, `deduction2`, `net`, `acctno`) VALUES
(75, 'Eugene', 'Lobo', 'Lansang', 'Highschool', 'HS Faculty', 'Regular', '75HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 12208, 1000, 3355, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 129, '', 0, 16435, '15-00034-6'),
(71, 'Frano', 'Ricafort', 'Maglalang', 'Highschool', 'HS Faculty', 'Regular', '71HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 10001, 500, 3750, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 380280, 717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 227, '', 0, 13307, '15-00040-1'),
(210267, 'Katrina Mae Ann', 'Sahagun', 'Manlutac', 'Highschool', 'HS Faculty', 'Probationary', '210267HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8309, 750, 1126, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 926, '', 0, 9258, '15-00194-6'),
(67, 'Emiliana', 'Chan', 'Manuel', 'Highschool', 'HS Faculty', 'Contractual', '67HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8771, 1250, 4952, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 14974, '15-00032-0'),
(410313, 'VERONICA', 'ENRIQUEZ', 'MARGEN', 'Highschool', 'HS Faculty', 'Probationary', '410313HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 6500, 500, 2409, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 57, '', 0, 9352, '15-11513-0'),
(360300, 'AIRA MARIE', 'ANCHETA', 'MARQUEZ', 'Highschool', 'HS Faculty', 'Probationary', '360300HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7500, 750, 2813, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11063, '15-11498-9'),
(250269, 'NOEMI', 'COCHON', 'NICDAO', 'Highschool', 'HS Faculty', 'Probationary', '250269HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8309, 750, 2770, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 25, '', 0, 11804, '15-00206-3'),
(125, 'Shareen Jenise', 'Alvaro', 'Carlos', 'Elementary', '', '', '125GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7680, 0, 0, 0, '0', 0, '', 0, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6912, '15-00083-4'),
(66, 'Rossel', 'Dimalanta', 'Crizaldo', 'Elementary', 'ELEM Faculty', 'Probationary', '66GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 9993, 150, 511, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 12, '', 0, 10642, '15-00036-2'),
(250280, 'JOYLYN', 'YUMUL', 'LERIT', 'Elementary', 'ELEM Faculty', 'Probationary', '250280GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8309, 650, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 340278, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8636, '15-00210-1'),
(250281, 'KRISTELLE', 'MULDONG', 'LUMANOG', 'Elementary', 'ELEM Faculty', 'Probationary', '250281GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8309, 150, 0, 0, 'Adjustment', 2000, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10459, '15-00209-8'),
(68, 'Daisy', 'mercado', 'Mendoza', 'Elementary', 'ELEM Faculty', 'Probationary', '68GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 9988, 150, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10138, '15-00035-4'),
(30232, 'Marites', 'Mendoza', 'Reyes', 'Elementary', 'ELEM Faculty', 'Contractual', '30232GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 9641, 150, 493, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 390280, 393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pag ibig loan Payable', 1610, 'lates', 41, 8240, '15-00134-2'),
(420317, 'CATHERINE', 'SANTOS', 'SANTOS', 'Elementary', 'ELEM Faculty', 'Contractual', '420317GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7500, 250, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7750, '15-11520-2'),
(410316, 'DINDI SARA', 'SALUNGA', 'VALENCIA', 'Elementary', 'ELEM Faculty', 'Probationary', '410316GS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 6500, 150, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6650, '15-11518-5'),
(430317, 'JADE MIKAELA', 'SALCEDO', 'PINEDA', 'Highschool', 'HS Faculty', 'Probationary', '430317HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7500, 250, 1530, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 844, 'lates', 383, 8053, '15-11522-8'),
(20230, 'Collin', 'Sagum', 'Razon', 'Highschool', 'HS Faculty', 'Contractual', '20230HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 9641, 1750, 1206, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 174, '', 0, 12423, '15-00129-6'),
(280283, 'JONALYN', 'ISIP', 'RODRIGUEZ', 'Highschool', 'HS Faculty', 'Probationary', '280283HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8309, 500, 2381, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 34, '', 0, 11156, '15-00219-5'),
(250273, 'KRIZZIA NIKKA', 'NAGUIT', 'SINGQUE', 'Highschool', 'HS Faculty', 'Probationary', '250273HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7309, 750, 1300, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 30, '', 0, 9329, '15-00204-7'),
(103, 'Irene', 'Sevilla', 'Tala', 'Highschool', 'HS Faculty', 'Regular', '103HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 20000, 2500, 5550, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 28050, '15-00053-2'),
(110261, 'KIMBERLYN', 'NAGUIT', 'TIGLAO', 'Highschool', 'HS Faculty', 'Probationary', '110261HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8309, 2000, 2640, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 49, '', 0, 12900, '15-00175-0'),
(25, 'Misel', 'Mariano', 'Valencia', 'Highschool', 'HS Faculty', 'Part-Time', '25HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 0, 0, 4300, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4300, '01-11023-0'),
(110259, 'RINZIE', 'GUIBELONDO', 'VARGAS', 'Highschool', 'HS Faculty', 'Probationary', '110259HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8309, 1000, 2446, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 300271, 346, 0, 0, 0, 0, 0, 0, 380281, 0, 0, 1875, 0, 0, 0, 0, 0, 'lates', 663, '', 0, 8870, '15-00174-1'),
(125, 'Shareen Jenise', 'Alvaro', 'Carlos', 'College', 'COL Faculty', 'Part-Time', '125COL-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 0, 11700, 0, 0, '0', 0, '', 0, 1170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10530, '15-00083-4'),
(77, 'Carlito', 'D', 'Nicdao', 'College', 'COL Faculty', 'Part-Time', '77COL-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 0, 3300, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3300, '15-00042-7'),
(1, 'JUAN', 'Torres', 'DELA CRUZ', 'College', 'COL Faculty', 'Part-Time', '1COL-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 12, 0, 4200, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4200, '15-00003-6'),
(450318, 'DAINE', 'CATAYTAY', 'SURDILLA', 'Highschool', 'HS Faculty', 'Probationary', '450318HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 3409, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3409, '15-11525-7'),
(77, 'Carlito', 'D', 'Nicdao', 'Administration', '', '', '77ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 3, 10000, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10000, '15-00042-7'),
(310292, 'ABELARDO JR.', 'CASTRO', 'BAUTISTA', 'Administration', 'Maintenance', 'Probationary', '310292ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-00229-2'),
(96, 'Marivi', 'Zapanta', 'Carlos', 'Administration', 'Office Staff', 'Regular', '96ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8504, 750, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 330276, 761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 67, '', 0, 8426, '15-00046-0'),
(144, 'Jaime Emmanuel ', 'A', 'Carlos', 'Administration', 'IT', 'Probationary', '144ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 9027, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 159, '', 0, 8868, '15-00164-4'),
(14, 'Mary Grace', 'Quioc', 'David', 'Administration', 'Registrar', 'Regular', '14ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 9130, 500, 0, 393, ' ', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10023, '01-01498-0'),
(118, 'Florence Grei', 'de Dios', 'Dejaresco', 'Administration', 'Accounting Clerk', 'Regular', '118ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7297, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 300273, 577, 360280, 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 152, '', 0, 6046, '15-00056-7'),
(65, 'Wilma', 'M', 'Enero', 'Administration', 'Maintenance', 'Temporary', '65ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 5665, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5665, '15-00155-5'),
(210, 'Monette', 'Laqui', 'Galang', 'Administration', 'Registrar', 'Regular', '210ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 10809, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 983, 'lates', 111, 9716, '15-00110-5'),
(180256, 'MA. INESHA', 'NIRIC', 'GATCHALIAN', 'Administration', 'Office Staff', 'Probationary', '180256ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-00188-1'),
(98, 'Ronnie', 'Turbanada', 'Guanlao', 'Administration', 'Library Clerk', '', '98ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 8049, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 370281, 620, 0, 0, 370280, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 843, '', 0, 6290, '15-00048-6'),
(80246, 'Jhoana', 'Gagui', 'Herrera', 'Administration', 'Maintenance', 'Part-Time', '80246ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 3090, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3090, '15-00225-0'),
(270283, 'JEREMY MEREDITH', 'BANAL', 'JAIO', 'Administration', 'Office Staff', 'Probationary', '270283ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 130, '', 0, 5656, '15-00217-9'),
(1, 'JUAN', 'Torres', 'DELA CRUZ', 'Administration', 'IT Head', 'Regular', '1ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 0, 6341, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6341, '15-00003-6'),
(229, 'Marlyn', 'B', 'Mendoza', 'Administration', 'Office Staff', 'Temporary', '229ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5921, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5921, '15-00116-4'),
(210269, 'EDLYN', 'SINGIAN', 'MERCADO', 'Administration', 'Registrar', 'Temporary', '210269ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5921, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 269, '', 0, 5652, '15-00196-2'),
(55, 'Raul', 'Guanlao', 'Mercado', 'Administration', 'Maintenance', 'Regular', '55ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 6747, 1500, 0, 324, 'overtime pay', 2453, '', 0, 0, 0, 0, 0, 0, 0, 0, 230272, 781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10243, '01-09715-0'),
(330294, 'EMMANUEL', 'MANALAC', 'MESINA', 'Administration', 'IT STAFF', 'Temporary', '330294ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-11490-0'),
(430318, 'VERNARD', 'MALLARI', 'MIGUEL', 'Administration', 'IT', 'Contractual', '430318ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 3, 1545, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 1545, '15-11521-0'),
(26, 'Angelique', 'Sibal', 'Morales', 'Administration', 'Accounting Clerk', 'Regular', '26ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 3, 10051, 1133, 0, 385, '', 0, '', 0, 0, 0, 0, 0, 0, 40265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 66, '', 0, 11502, '01-05606-0'),
(187, 'Eden', 'S', 'Pucut', 'Administration', 'Maintenance', 'Temporary', '187ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 3090, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3090, '15-11496-3'),
(410317, 'PRINCESS ROSETTE', 'MEDINA', 'ROBLES', 'Administration', 'Library Clerk', 'Contractual', '410317ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5665, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences(monthly not daily)', 1545, '', 0, 4120, '15-11519-2'),
(217, 'Gina', 'A', 'Rocha', 'Administration', 'Guidance', 'Probationary', '217ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 10000, 2500, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 339, '', 0, 12161, '15-00111-3'),
(121, 'Diana Rose', 'Banzil', 'Ronquillo', 'Administration', 'Library Clerk', 'Regular', '121ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 526, '', 0, 5260, '15-00059-1'),
(70239, 'Jojo', 'D', 'Ronquillo', 'Administration', 'Security', 'Part-Time', '70239ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5786, 500, 0, 0, 'overtime pay', 5424, 'holiday pay', 1894, 0, 0, 0, 0, 0, 220270, 0, 0, 0, 350278, 2326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11278, '15-00184-9'),
(165, 'Jovanne', 'Z', 'Rosalado', 'Administration', 'Security Guard', 'Probationary', '165ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5960, 0, 0, 0, 'overtime pay', 5323, 'holiday pay', 1950, 0, 0, 0, 0, 0, 210270, 761, 0, 0, 280271, 749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11722, '15-00087-7'),
(222, 'Eduardo', 'Torno', 'Santos', 'Administration', 'Maintenance', 'Probationary', '222ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 6000, 500, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6500, '15-00112-1'),
(70234, 'Donna', 'Garcia', 'Tolentino', 'Administration', 'Clinic Aide', 'Part-Time', '70234ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-00146-6'),
(220269, 'Sarah Claire', '', 'Tuquib', 'Administration', 'Accounting Staff', 'Probationary', '220269ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 138, '', 0, 5648, '15-00200-4'),
(25, 'Misel', 'Mariano', 'Valencia', 'Administration', 'Purchasing Officer', 'Regular', '25ADM-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 6, 11862, 1400, 0, 430, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 13692, '01-11023-0'),
(300289, 'ANGELICA', 'DAVID', 'ASAS', 'Highschool', 'HS Faculty', 'Probationary', '300289HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7500, 250, 2710, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 115, '', 0, 10345, '15-00226-8'),
(340297, 'RICKY', 'SANTOS', 'BACANI', 'Highschool', 'HS Faculty', 'Probationary', '340297HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7500, 1250, 2240, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10990, '15-11504-8'),
(380304, 'April', 'Calma', 'Cruz', 'Highschool', 'HS Faculty', 'Probationary', '380304HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 7500, 750, 2850, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 168, '', 0, 10932, '15-11506-4'),
(410311, 'MAY ANNE', 'OCAMPO', 'DE DIOS', 'Highschool', 'HS Faculty', 'Probationary', '410311HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 6500, 250, 1205, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7955, '15-11514-3'),
(10237, 'Jaime III', 'Pring', 'Del Rosario', 'Highschool', 'HS Faculty', 'Contractual', '10237HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 9636, 750, 1782, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 138, '', 0, 12030, '15-00135-1'),
(210, 'Monette', 'Laqui', 'Galang', 'Highschool', 'HS Faculty', 'Regular', '210HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 0, 0, 3820, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 347, '', 0, 3473, '15-00110-5'),
(410314, 'WAYLON CARL', 'FAUSTO', 'GALANG', 'Highschool', 'HS Faculty', 'Probationary', '410314HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 6500, 500, 2288, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 60, '', 0, 9228, '15-11517-7'),
(98, 'Ronnie', 'Turbanada', 'Guanlao', 'Highschool', 'HS Faculty', 'Part-Time', '98HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 0, 0, 6250, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6250, '15-00048-6'),
(410315, 'MARC GLENN', 'ENRIQUEZ', 'GUEVARRA', 'Highschool', 'HS Faculty', 'Probationary', '410315HS-JAN0115-2025', '2025-01-01 00:00:00', '2025-01-15 00:00:00', 1, 0, 0, 0, 6500, 500, 2227, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 98, '', 0, 9129, '15-11516-9'),
(148, 'Arnold', ' ', 'Enriquez', 'Administration', 'Security Guard', 'Probationary', '148ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 15, 7725, 0, 0, 0, 'overtime pay', 3766, 'holiday pay', 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11645, ''),
(165, 'Jovanne', 'Z', 'Rosalado', 'Administration', 'Security Guard', 'Probationary', '165ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 15, 5960, 0, 0, 0, 'overtime pay', 5323, 'holiday pay', 325, 0, 743, 408, 0, 200, 210270, 761, 0, 0, 280271, 749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8746, '15-00087-7'),
(70239, 'Jojo', 'D', 'Ronquillo', 'Administration', 'Security', 'Part-Time', '70239ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 15, 5786, 500, 0, 0, 'overtime pay', 5168, 'holiday pay', 316, 0, 518, 289, 0, 200, 220270, 0, 0, 0, 350278, 2326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8437, '15-00184-9'),
(125, 'Shareen Jenise', 'Alvaro', 'Carlos', 'College', 'COL Faculty', 'Part-Time', '125COL-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 0, 11700, 0, 0, '0', 0, '', 0, 1170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10530, '15-00083-4'),
(1, 'JUAN', 'Torres', 'DELA CRUZ', 'College', 'COL Faculty', 'Part-Time', '1COL-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 0, 6341, 0, 0, '0', 0, '', 0, 0, 765, 425, 552, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4398, '15-00003-6'),
(77, 'Carlito', 'D', 'Nicdao', 'College', 'COL Faculty', 'Part-Time', '77COL-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 0, 3300, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3300, '15-00042-7'),
(310292, 'ABELARDO JR.', 'CASTRO', 'BAUTISTA', 'Administration', 'Maintenance', 'Probationary', '310292ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 5786, 0, 0, 0, '0', 0, '', 0, 0, 518, 289, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4779, '15-00229-2'),
(96, 'Marivi', 'Zapanta', 'Carlos', 'Administration', 'Office Staff', 'Regular', '96ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8504, 750, 0, 0, '0', 0, '', 0, 0, 765, 425, 553, 200, 330276, 761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6549, '15-00046-0'),
(144, 'Jaime Emmanuel ', 'A', 'Carlos', 'Administration', 'IT', 'Probationary', '144ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 9027, 0, 0, 0, '0', 0, '', 0, 0, 810, 451, 587, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6979, '15-00164-4'),
(14, 'Mary Grace', 'Quioc', 'David', 'Administration', 'Registrar', 'Regular', '14ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 9130, 500, 0, 393, ' ', 0, '', 0, 0, 900, 0, 593, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6730, '01-01498-0'),
(77, 'Carlito', 'D', 'Nicdao', 'Administration', '', '', '77ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 10000, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10000, '15-00042-7'),
(125, 'Shareen Jenise', 'Alvaro', 'Carlos', 'Elementary', '', '', '125GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7680, 0, 0, 0, '0', 0, '', 0, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6912, '15-00083-4'),
(118, 'Florence Grei', 'de Dios', 'Dejaresco', 'Administration', 'Accounting Clerk', 'Regular', '118ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7297, 0, 0, 0, '0', 0, '', 0, 0, 653, 365, 474, 200, 300273, 577, 360280, 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4507, '15-00056-7'),
(65, 'Wilma', 'M', 'Enero', 'Administration', 'Maintenance', 'Temporary', '65ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 5665, 0, 0, 0, '0', 0, '', 0, 0, 518, 283, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4664, '15-00155-5'),
(210, 'Monette', 'Laqui', 'Galang', 'Administration', 'Registrar', 'Regular', '210ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 10809, 0, 0, 0, '0', 0, '', 0, 0, 968, 540, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9101, '15-00110-5'),
(180256, 'MA. INESHA', 'NIRIC', 'GATCHALIAN', 'Administration', 'Office Staff', 'Probationary', '180256ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 5786, 0, 0, 0, 'Overtime Pay(printing of testpapers)', 1000, '', 0, 0, 518, 289, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5779, '15-00188-1'),
(98, 'Ronnie', 'Turbanada', 'Guanlao', 'Administration', 'Library Clerk', '', '98ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8049, 0, 0, 0, '0', 0, '', 0, 0, 720, 402, 0, 200, 370281, 620, 0, 0, 370280, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5811, '15-00048-6'),
(80246, 'Jhoana', 'Gagui', 'Herrera', 'Administration', 'Maintenance', 'Part-Time', '80246ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 4635, 0, 0, 0, '0', 0, '', 0, 0, 518, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3918, '15-00225-0'),
(270283, 'JEREMY MEREDITH', 'BANAL', 'JAIO', 'Administration', 'Office Staff', 'Probationary', '270283ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 5786, 0, 0, 0, '0', 0, '', 0, 0, 518, 289, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4779, '15-00217-9'),
(1, 'JUAN', 'Torres', 'DELA CRUZ', 'Administration', 'IT Head', 'Regular', '1ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 24, 9, 6341, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6341, '15-00003-6'),
(229, 'Marlyn', 'B', 'Mendoza', 'Administration', 'Office Staff', 'Temporary', '229ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 10, 5921, 0, 0, 0, '0', 0, '', 0, 0, 540, 296, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4885, '15-00116-4'),
(210269, 'EDLYN', 'SINGIAN', 'MERCADO', 'Administration', 'Registrar', 'Temporary', '210269ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 10, 5921, 0, 0, 0, '0', 0, '', 0, 0, 540, 296, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4885, '15-00196-2'),
(55, 'Raul', 'Guanlao', 'Mercado', 'Administration', 'Maintenance', 'Regular', '55ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 6747, 1500, 0, 324, 'overtime pay', 613, '', 0, 0, 608, 337, 439, 200, 0, 0, 230272, 781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6819, '01-09715-0'),
(330294, 'EMMANUEL', 'MANALAC', 'MESINA', 'Administration', 'IT STAFF', 'Temporary', '330294ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 10, 5786, 0, 0, 0, '0', 0, '', 0, 0, 518, 289, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4779, '15-11490-0'),
(430318, 'VERNARD', 'MALLARI', 'MIGUEL', 'Administration', 'IT', 'Contractual', '430318ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 4635, 0, 0, 0, '0', 0, '', 0, 0, 518, 283, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3634, '15-11521-0'),
(26, 'Angelique', 'Sibal', 'Morales', 'Administration', 'Accounting Clerk', 'Regular', '26ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 10051, 1133, 0, 385, '', 0, '', 0, 0, 900, 503, 653, 200, 40265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9312, '01-05606-0'),
(187, 'Eden', 'S', 'Pucut', 'Administration', 'Maintenance', 'Temporary', '187ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 4635, 0, 0, 0, '0', 0, '', 0, 0, 518, 283, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3634, '15-11496-3'),
(217, 'Gina', 'A', 'Rocha', 'Administration', 'Guidance', 'Probationary', '217ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 10000, 2500, 0, 0, '0', 0, '', 0, 0, 900, 500, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10900, '15-00111-3'),
(121, 'Diana Rose', 'Banzil', 'Ronquillo', 'Administration', 'Library Clerk', 'Regular', '121ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 5786, 0, 0, 0, '0', 0, '', 0, 0, 518, 289, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4779, '15-00059-1'),
(222, 'Eduardo', 'Torno', 'Santos', 'Administration', 'Maintenance', 'Probationary', '222ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 6000, 500, 0, 0, '0', 0, '', 0, 0, 540, 300, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5460, '15-00112-1'),
(70234, 'Donna', 'Garcia', 'Tolentino', 'Administration', 'Clinic Aide', 'Part-Time', '70234ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 5665, 0, 0, 0, '0', 0, '', 0, 0, 518, 283, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4664, '15-00146-6'),
(220269, 'Sarah Claire', '', 'Tuquib', 'Administration', 'Accounting Staff', 'Probationary', '220269ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 5786, 0, 0, 0, '0', 0, '', 0, 0, 518, 289, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4779, '15-00200-4'),
(25, 'Misel', 'Mariano', 'Valencia', 'Administration', 'Purchasing Officer', 'Regular', '25ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 9, 11862, 1400, 0, 430, '', 0, '', 0, 0, 1058, 593, 771, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11071, '01-11023-0'),
(300289, 'ANGELICA', 'DAVID', 'ASAS', 'Highschool', 'HS Faculty', 'Probationary', '300289HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7500, 125, 1355, 0, '0', 0, '', 0, 0, 675, 375, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7730, '15-00226-8'),
(340297, 'RICKY', 'SANTOS', 'BACANI', 'Highschool', 'HS Faculty', 'Probationary', '340297HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7500, 500, 1120, 0, '0', 0, '', 0, 0, 675, 375, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7870, '15-11504-8'),
(380304, 'April', 'Calma', 'Cruz', 'Highschool', 'HS Faculty', 'Probationary', '380304HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7500, 375, 1425, 0, '0', 0, '', 0, 0, 675, 375, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8050, '15-11506-4'),
(410311, 'MAY ANNE', 'OCAMPO', 'DE DIOS', 'Highschool', 'HS Faculty', 'Probationary', '410311HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 6500, 125, 602, 0, '0', 0, '', 0, 0, 585, 325, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6117, '15-11514-3'),
(10237, 'Jaime III', 'Pring', 'Del Rosario', 'Highschool', 'HS Faculty', 'Contractual', '10237HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 9636, 375, 701, 0, 'Adjustment', 1000, '', 0, 0, 878, 482, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10153, '15-00135-1'),
(210, 'Monette', 'Laqui', 'Galang', 'Highschool', 'HS Faculty', 'Regular', '210HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 0, 0, 2570, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 2570, '15-00110-5'),
(410314, 'WAYLON CARL', 'FAUSTO', 'GALANG', 'Highschool', 'HS Faculty', 'Probationary', '410314HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 6500, 250, 1144, 0, '0', 0, '', 0, 0, 585, 325, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6784, '15-11517-7'),
(98, 'Ronnie', 'Turbanada', 'Guanlao', 'Highschool', 'HS Faculty', 'Part-Time', '98HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 0, 0, 3125, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3125, '15-00048-6'),
(410315, 'MARC GLENN', 'ENRIQUEZ', 'GUEVARRA', 'Highschool', 'HS Faculty', 'Probationary', '410315HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 6500, 250, 1114, 0, '0', 0, '', 0, 0, 585, 325, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6754, '15-11516-9'),
(75, 'Eugene', 'Lobo', 'Lansang', 'Highschool', 'HS Faculty', 'Regular', '75HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 12208, 500, 1677, 0, '0', 0, '', 0, 0, 1103, 610, 794, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11679, '15-00034-6'),
(71, 'Frano', 'Ricafort', 'Maglalang', 'Highschool', 'HS Faculty', 'Regular', '71HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 10001, 250, 1875, 0, '0', 0, '', 0, 0, 900, 500, 650, 200, 0, 0, 380280, 717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9158, '15-00040-1'),
(210267, 'Katrina Mae Ann', 'Sahagun', 'Manlutac', 'Highschool', 'HS Faculty', 'Probationary', '210267HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8309, 375, 1223, 0, '0', 0, '', 0, 0, 743, 415, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8549, '15-00194-6'),
(67, 'Emiliana', 'Chan', 'Manuel', 'Highschool', 'HS Faculty', 'Contractual', '67HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8771, 625, 2476, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11873, '15-00032-0'),
(410313, 'VERONICA', 'ENRIQUEZ', 'MARGEN', 'Highschool', 'HS Faculty', 'Probationary', '410313HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 6500, 250, 1205, 0, '0', 0, '', 0, 0, 585, 325, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6845, '15-11513-0'),
(360300, 'AIRA MARIE', 'ANCHETA', 'MARQUEZ', 'Highschool', 'HS Faculty', 'Probationary', '360300HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7500, 375, 1406, 0, '0', 0, '', 0, 0, 675, 375, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8031, '15-11498-9'),
(250269, 'NOEMI', 'COCHON', 'NICDAO', 'Highschool', 'HS Faculty', 'Probationary', '250269HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8309, 375, 1385, 0, '0', 0, '', 0, 0, 743, 415, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8711, '15-00206-3'),
(430317, 'JADE MIKAELA', 'SALCEDO', 'PINEDA', 'Highschool', 'HS Faculty', 'Probationary', '430317HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7500, 125, 1235, 0, 'Adjustment', 1000, '', 0, 0, 675, 375, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8610, '15-11522-8'),
(20230, 'Collin', 'Sagum', 'Razon', 'Highschool', 'HS Faculty', 'Contractual', '20230HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 9641, 875, 603, 0, '0', 0, '', 0, 0, 878, 482, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9559, '15-00129-6'),
(280283, 'JONALYN', 'ISIP', 'RODRIGUEZ', 'Highschool', 'HS Faculty', 'Probationary', '280283HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8309, 250, 1190, 0, '0', 0, '', 0, 0, 743, 415, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8391, '15-00219-5'),
(250273, 'KRIZZIA NIKKA', 'NAGUIT', 'SINGQUE', 'Highschool', 'HS Faculty', 'Probationary', '250273HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7309, 375, 1222, 0, '0', 0, '', 0, 0, 653, 365, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7688, '15-00204-7'),
(103, 'Irene', 'Sevilla', 'Tala', 'Highschool', 'HS Faculty', 'Regular', '103HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 20000, 2500, 2775, 0, '0', 0, '', 0, 0, 1350, 1000, 1300, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 21425, '15-00053-2'),
(110261, 'KIMBERLYN', 'NAGUIT', 'TIGLAO', 'Highschool', 'HS Faculty', 'Probationary', '110261HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8309, 1000, 1320, 0, '0', 0, '', 0, 0, 743, 415, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9271, '15-00175-0'),
(25, 'Misel', 'Mariano', 'Valencia', 'Highschool', 'HS Faculty', 'Part-Time', '25HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 0, 0, 3050, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3050, '01-11023-0'),
(110259, 'RINZIE', 'GUIBELONDO', 'VARGAS', 'Highschool', 'HS Faculty', 'Probationary', '110259HS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8309, 500, 1223, 0, '0', 0, '', 0, 0, 743, 415, 0, 200, 300271, 346, 0, 0, 0, 0, 0, 0, 380281, 0, 0, 1875, 0, 0, 0, 0, 0, '', 0, '', 0, 6453, '15-00174-1'),
(66, 'Rossel', 'Dimalanta', 'Crizaldo', 'Elementary', 'ELEM Faculty', 'Probationary', '66GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 9993, 75, 255, 0, '0', 0, '', 0, 0, 900, 500, 650, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8074, '15-00036-2'),
(250280, 'JOYLYN', 'YUMUL', 'LERIT', 'Elementary', 'ELEM Faculty', 'Probationary', '250280GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 8309, 325, 0, 0, '0', 0, '', 0, 0, 743, 415, 0, 200, 340278, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6953, '15-00210-1'),
(250281, 'KRISTELLE', 'MULDONG', 'LUMANOG', 'Elementary', 'ELEM Faculty', 'Probationary', '250281GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7309, 75, 0, 0, '0', 0, '', 0, 0, 653, 365, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6166, '15-00209-8'),
(68, 'Daisy', 'mercado', 'Mendoza', 'Elementary', 'ELEM Faculty', 'Probationary', '68GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 9988, 75, 0, 0, '0', 0, '', 0, 0, 900, 499, 649, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7814, '15-00035-4'),
(30232, 'Marites', 'Mendoza', 'Reyes', 'Elementary', 'ELEM Faculty', 'Contractual', '30232GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 9641, 75, 247, 0, '0', 0, '', 0, 0, 878, 482, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8403, '15-00134-2'),
(420317, 'CATHERINE', 'SANTOS', 'SANTOS', 'Elementary', 'ELEM Faculty', 'Contractual', '420317GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 7500, 125, 0, 0, '0', 0, '', 0, 0, 675, 375, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6375, '15-11520-2'),
(410316, 'DINDI SARA', 'SALUNGA', 'VALENCIA', 'Elementary', 'ELEM Faculty', 'Probationary', '410316GS-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 0, 6500, 75, 0, 0, '0', 0, '', 0, 0, 585, 325, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5465, '15-11518-5'),
(410317, 'PRINCESS ROSETTE', 'MEDINA', 'ROBLES', 'Administration', 'Library Clerk', 'Contractual', '410317ADM-DEC1631-2024', '2024-12-16 00:00:00', '2024-12-31 00:00:00', 0, 1, 0, 4, 2060, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 2060, '15-11519-2'),
(310292, 'ABELARDO JR.', 'CASTRO', 'BAUTISTA', 'Administration', 'Maintenance', 'Probationary', '310292ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6691, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6691, '15-00229-2'),
(96, 'Marivi', 'Zapanta', 'Carlos', 'Administration', 'Office Staff', 'Regular', '96ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 10479, '', 0, 0, 0, 0, 0, 0, 330276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10479, '15-00046-0'),
(144, 'Jaime Emmanuel ', 'A', 'Carlos', 'Administration', 'IT', 'Probationary', '144ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 10997, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10997, '15-00164-4'),
(14, 'Mary Grace', 'Quioc', 'David', 'Administration', 'Registrar', 'Regular', '14ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 11349, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11349, '01-01498-0'),
(118, 'Florence Grei', 'de Dios', 'Dejaresco', 'Administration', 'Accounting Clerk', 'Regular', '118ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8978, '', 0, 0, 0, 0, 0, 0, 300273, 0, 360280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8978, '15-00056-7'),
(400311, 'REGGIE', 'BERNABE', 'DOMDOM', 'Administration', 'Maintenance', 'Probationary', '400311ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6008, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6008, '15-11512-2'),
(65, 'Wilma', 'M', 'Enero', 'Administration', 'Maintenance', 'Temporary', '65ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6811, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6811, '15-00155-5'),
(210, 'Monette', 'Laqui', 'Galang', 'Administration', 'Registrar', 'Regular', '210ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 13168, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 13168, '15-00110-5'),
(180256, 'MA. INESHA', 'NIRIC', 'GATCHALIAN', 'Administration', 'Office Staff', 'Probationary', '180256ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6834, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6834, '15-00188-1'),
(98, 'Ronnie', 'Turbanada', 'Guanlao', 'Administration', 'Library Clerk', '', '98ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8637, '', 0, 0, 0, 0, 0, 0, 370281, 0, 0, 0, 370280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8637, '15-00048-6'),
(80246, 'Jhoana', 'Gagui', 'Herrera', 'Administration', 'Maintenance', 'Part-Time', '80246ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6819, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6819, '15-00225-0'),
(270283, 'JEREMY MEREDITH', 'BANAL', 'JAIO', 'Administration', 'Office Staff', 'Probationary', '270283ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6728, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6728, '15-00217-9'),
(1, 'JUAN', 'Torres', 'DELA CRUZ', 'Administration', 'IT Head', 'Regular', '1ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8982, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8982, '15-00003-6'),
(229, 'Marlyn', 'B', 'Mendoza', 'Administration', 'Office Staff', 'Temporary', '229ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7094, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7094, '15-00116-4'),
(210269, 'EDLYN', 'SINGIAN', 'MERCADO', 'Administration', 'Registrar', 'Temporary', '210269ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7003, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7003, '15-00196-2'),
(210267, 'Katrina Mae Ann', 'Sahagun', 'Manlutac', 'Highschool', 'HS Faculty', 'Probationary', '210267HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8309, 750, 2446, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11504, '15-00194-6'),
(67, 'Emiliana', 'Chan', 'Manuel', 'Highschool', 'HS Faculty', 'Contractual', '67HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8771, 1250, 4952, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 14974, '15-00032-0'),
(410313, 'VERONICA', 'ENRIQUEZ', 'MARGEN', 'Highschool', 'HS Faculty', 'Probationary', '410313HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 6500, 500, 2409, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370282, 0, 0, 525, 0, 0, 0, 0, 0, 'lates', 98, '', 0, 8786, '15-11513-0'),
(360300, 'AIRA MARIE', 'ANCHETA', 'MARQUEZ', 'Highschool', 'HS Faculty', 'Probationary', '360300HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7500, 750, 2813, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 13, '', 0, 11050, '15-11498-9'),
(250269, 'NOEMI', 'COCHON', 'NICDAO', 'Highschool', 'HS Faculty', 'Probationary', '250269HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8309, 750, 2770, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11828, '15-00206-3'),
(430317, 'JADE MIKAELA', 'SALCEDO', 'PINEDA', 'Highschool', 'HS Faculty', 'Probationary', '430317HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 6500, 250, 2470, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370287, 0, 0, 525, 0, 0, 0, 0, 0, 'lates', 148, '', 0, 8547, '15-11522-8'),
(20230, 'Collin', 'Sagum', 'Razon', 'Highschool', 'HS Faculty', 'Contractual', '20230HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 9641, 1750, 1206, 0, 'Substitution', 3250, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 134, '', 0, 15713, '15-00129-6'),
(280283, 'JONALYN', 'ISIP', 'RODRIGUEZ', 'Highschool', 'HS Faculty', 'Probationary', '280283HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8309, 500, 2381, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11190, '15-00219-5'),
(250273, 'KRIZZIA NIKKA', 'NAGUIT', 'SINGQUE', 'Highschool', 'HS Faculty', 'Probationary', '250273HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7309, 750, 2444, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 50, '', 0, 10453, '15-00204-7'),
(103, 'Irene', 'Sevilla', 'Tala', 'Highschool', 'HS Faculty', 'Regular', '103HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 20000, 2500, 5550, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 28050, '15-00053-2'),
(110261, 'KIMBERLYN', 'NAGUIT', 'TIGLAO', 'Highschool', 'HS Faculty', 'Probationary', '110261HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8309, 2000, 2640, 0, 'Substitution', 3250, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 27, '', 0, 16172, '15-00175-0'),
(25, 'Misel', 'Mariano', 'Valencia', 'Highschool', 'HS Faculty', 'Part-Time', '25HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 0, 0, 6100, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6100, '01-11023-0'),
(110259, 'RINZIE', 'GUIBELONDO', 'VARGAS', 'Highschool', 'HS Faculty', 'Probationary', '110259HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8309, 1000, 2446, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 300271, 346, 0, 0, 0, 0, 0, 0, 380281, 0, 0, 1875, 0, 0, 0, 0, 0, 'absences', 4274, 'lates', 102, 5157, '15-00174-1'),
(66, 'Rossel', 'Dimalanta', 'Crizaldo', 'Elementary', 'ELEM Faculty', 'Probationary', '66GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 9993, 150, 511, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 6, '', 0, 10648, '15-00036-2'),
(250280, 'JOYLYN', 'YUMUL', 'LERIT', 'Elementary', 'ELEM Faculty', 'Probationary', '250280GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8309, 650, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 340278, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8636, '15-00210-1'),
(250281, 'KRISTELLE', 'MULDONG', 'LUMANOG', 'Elementary', 'ELEM Faculty', 'Probationary', '250281GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7309, 150, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7459, '15-00209-8');
INSERT INTO `payroll` (`empid`, `firstname`, `mname`, `surname`, `department`, `designation`, `status`, `payslipno`, `dtefrom`, `dteto`, `first`, `second`, `hour`, `days`, `basicpay`, `allowance`, `overload`, `longevity`, `desc1`, `other1`, `desc2`, `other2`, `wtax`, `sss`, `med`, `peraa`, `pagibig`, `sssloanid`, `sssloan`, `peraaloanid`, `peraaloan`, `pagibigloanid`, `pagibigloan`, `pagibigloanidc`, `pagibigloanc`, `caloanid`, `othersid`, `others`, `ca`, `eo`, `late`, `tardiness`, `nosabsent`, `absent`, `otherdeduction1`, `deduction1`, `otherdeduction2`, `deduction2`, `net`, `acctno`) VALUES
(68, 'Daisy', 'mercado', 'Mendoza', 'Elementary', 'ELEM Faculty', 'Probationary', '68GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 9988, 150, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pag ibig Loan payable', 440, 'lates', 8, 9691, '15-00035-4'),
(30232, 'Marites', 'Mendoza', 'Reyes', 'Elementary', 'ELEM Faculty', 'Contractual', '30232GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 9641, 150, 493, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10284, '15-00134-2'),
(420317, 'CATHERINE', 'SANTOS', 'SANTOS', 'Elementary', 'ELEM Faculty', 'Contractual', '420317GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7500, 250, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370288, 0, 0, 525, 0, 0, 0, 0, 0, '', 0, '', 0, 7225, '15-11520-2'),
(410316, 'DINDI SARA', 'SALUNGA', 'VALENCIA', 'Elementary', 'ELEM Faculty', 'Probationary', '410316GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 6500, 150, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370289, 0, 0, 525, 0, 0, 0, 0, 0, 'early out', 106, '', 0, 6019, '15-11518-5'),
(55, 'Raul', 'Guanlao', 'Mercado', 'Administration', 'Maintenance', 'Regular', '55ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8430, '', 0, 0, 0, 0, 0, 0, 0, 0, 230272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8430, '01-09715-0'),
(430318, 'VERNARD', 'MALLARI', 'MIGUEL', 'Administration', 'IT', 'Contractual', '430318ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 2528, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 2528, '15-11521-0'),
(26, 'Angelique', 'Sibal', 'Morales', 'Administration', 'Accounting Clerk', 'Regular', '26ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 12421, '', 0, 0, 0, 0, 0, 0, 40265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 12421, '01-05606-0'),
(125, 'Shareen Jenise', 'Alvaro', 'Carlos', 'College', 'COL Faculty', 'Part-Time', '125COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 15000, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 15000, '15-00083-4'),
(77, 'Carlito', 'D', 'Nicdao', 'Administration', '', '', '77ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 12333, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 12333, '15-00042-7'),
(187, 'Eden', 'S', 'Pucut', 'Administration', 'Maintenance', 'Temporary', '187ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6084, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6084, '15-11496-3'),
(410317, 'PRINCESS ROSETTE', 'MEDINA', 'ROBLES', 'Administration', 'Library Clerk', 'Contractual', '410317ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3333, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350280, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3333, '15-11519-2'),
(217, 'Gina', 'A', 'Rocha', 'Administration', 'Guidance', 'Probationary', '217ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 11891, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11891, '15-00111-3'),
(121, 'Diana Rose', 'Banzil', 'Ronquillo', 'Administration', 'Library Clerk', 'Regular', '121ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 4172, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4172, '15-00059-1'),
(70239, 'Jojo', 'D', 'Ronquillo', 'Administration', 'Security', 'Part-Time', '70239ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6968, '', 0, 0, 0, 0, 0, 0, 220270, 0, 0, 0, 350278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6968, '15-00184-9'),
(165, 'Jovanne', 'Z', 'Rosalado', 'Administration', 'Security Guard', 'Probationary', '165ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6889, '', 0, 0, 0, 0, 0, 0, 210270, 0, 0, 0, 280271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6889, '15-00087-7'),
(222, 'Eduardo', 'Torno', 'Santos', 'Administration', 'Maintenance', 'Probationary', '222ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7079, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7079, '15-00112-1'),
(70234, 'Donna', 'Garcia', 'Tolentino', 'Administration', 'Clinic Aide', 'Part-Time', '70234ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 4590, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4590, '15-00146-6'),
(220269, 'Sarah Claire', '', 'Tuquib', 'Administration', 'Accounting Staff', 'Probationary', '220269ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6518, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6518, '15-00200-4'),
(25, 'Misel', 'Mariano', 'Valencia', 'Administration', 'Purchasing Officer', 'Regular', '25ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 14749, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 14749, '01-11023-0'),
(300289, 'ANGELICA', 'DAVID', 'ASAS', 'Highschool', 'HS Faculty', 'Probationary', '300289HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7647, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7647, '15-00226-8'),
(340297, 'RICKY', 'SANTOS', 'BACANI', 'Highschool', 'HS Faculty', 'Probationary', '340297HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7667, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7667, '15-11504-8'),
(380304, 'April', 'Calma', 'Cruz', 'Highschool', 'HS Faculty', 'Probationary', '380304HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7550, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7550, '15-11506-4'),
(410311, 'MAY ANNE', 'OCAMPO', 'DE DIOS', 'Highschool', 'HS Faculty', 'Probationary', '410311HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3934, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370283, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3934, '15-11514-3'),
(10237, 'Jaime III', 'Pring', 'Del Rosario', 'Highschool', 'HS Faculty', 'Contractual', '10237HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 9347, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9347, '15-00135-1'),
(410314, 'WAYLON CARL', 'FAUSTO', 'GALANG', 'Highschool', 'HS Faculty', 'Probationary', '410314HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3774, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370285, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3774, '15-11517-7'),
(410315, 'MARC GLENN', 'ENRIQUEZ', 'GUEVARRA', 'Highschool', 'HS Faculty', 'Probationary', '410315HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3759, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370286, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3759, '15-11516-9'),
(75, 'Eugene', 'Lobo', 'Lansang', 'Highschool', 'HS Faculty', 'Regular', '75HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 13927, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 13927, '15-00034-6'),
(71, 'Frano', 'Ricafort', 'Maglalang', 'Highschool', 'HS Faculty', 'Regular', '71HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 11624, '', 0, 0, 0, 0, 0, 0, 0, 0, 380280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11624, '15-00040-1'),
(210267, 'Katrina Mae Ann', 'Sahagun', 'Manlutac', 'Highschool', 'HS Faculty', 'Probationary', '210267HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8846, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8846, '15-00194-6'),
(67, 'Emiliana', 'Chan', 'Manuel', 'Highschool', 'HS Faculty', 'Contractual', '67HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8903, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8903, '15-00032-0'),
(410313, 'VERONICA', 'ENRIQUEZ', 'MARGEN', 'Highschool', 'HS Faculty', 'Probationary', '410313HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3937, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370282, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3937, '15-11513-0'),
(360300, 'AIRA MARIE', 'ANCHETA', 'MARQUEZ', 'Highschool', 'HS Faculty', 'Probationary', '360300HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8154, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8154, '15-11498-9'),
(250269, 'NOEMI', 'COCHON', 'NICDAO', 'Highschool', 'HS Faculty', 'Probationary', '250269HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8850, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8850, '15-00206-3'),
(430317, 'JADE MIKAELA', 'SALCEDO', 'PINEDA', 'Highschool', 'HS Faculty', 'Probationary', '430317HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3440, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370287, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3440, '15-11522-8'),
(20230, 'Collin', 'Sagum', 'Razon', 'Highschool', 'HS Faculty', 'Contractual', '20230HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 11716, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11716, '15-00129-6'),
(280283, 'JONALYN', 'ISIP', 'RODRIGUEZ', 'Highschool', 'HS Faculty', 'Probationary', '280283HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8830, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8830, '15-00219-5'),
(250273, 'KRIZZIA NIKKA', 'NAGUIT', 'SINGQUE', 'Highschool', 'HS Faculty', 'Probationary', '250273HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7552, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7552, '15-00204-7'),
(103, 'Irene', 'Sevilla', 'Tala', 'Highschool', 'HS Faculty', 'Regular', '103HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 22589, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 22589, '15-00053-2'),
(110261, 'KIMBERLYN', 'NAGUIT', 'TIGLAO', 'Highschool', 'HS Faculty', 'Probationary', '110261HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 10096, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10096, '15-00175-0'),
(110259, 'RINZIE', 'GUIBELONDO', 'VARGAS', 'Highschool', 'HS Faculty', 'Probationary', '110259HS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8710, '', 0, 0, 0, 0, 0, 0, 300271, 0, 0, 0, 0, 0, 0, 0, 380281, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8710, '15-00174-1'),
(66, 'Rossel', 'Dimalanta', 'Crizaldo', 'Elementary', 'ELEM Faculty', 'Probationary', '66GS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 12272, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 12272, '15-00036-2'),
(250280, 'JOYLYN', 'YUMUL', 'LERIT', 'Elementary', 'ELEM Faculty', 'Probationary', '250280GS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 9311, '', 0, 0, 0, 0, 0, 0, 340278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9311, '15-00210-1'),
(250281, 'KRISTELLE', 'MULDONG', 'LUMANOG', 'Elementary', 'ELEM Faculty', 'Probationary', '250281GS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7823, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7823, '15-00209-8'),
(68, 'Daisy', 'mercado', 'Mendoza', 'Elementary', 'ELEM Faculty', 'Probationary', '68GS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 11677, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11677, '15-00035-4'),
(30232, 'Marites', 'Mendoza', 'Reyes', 'Elementary', 'ELEM Faculty', 'Contractual', '30232GS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 11506, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 11506, '15-00134-2'),
(420317, 'CATHERINE', 'SANTOS', 'SANTOS', 'Elementary', 'ELEM Faculty', 'Contractual', '420317GS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 4375, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370288, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4375, '15-11520-2'),
(410316, 'DINDI SARA', 'SALUNGA', 'VALENCIA', 'Elementary', 'ELEM Faculty', 'Probationary', '410316GS-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3963, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370289, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3963, '15-11518-5'),
(340296, 'LYNEL', 'CALALANG', 'CRUZ', 'College', 'COL Faculty', 'Probationary', '340296COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 2475, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 2475, '15-11501-9'),
(202, 'Daryle', 'David', 'David', 'College', 'COL Faculty', 'Contractual', '202COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 2711, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 2711, '15-00100-8'),
(135, 'Angela', 'Pring', 'Del Rosario', 'College', 'COL Faculty', '', '135COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 9885, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9885, '15-00072-9'),
(92, 'Randy', 'Canlas', 'Del Rosario', 'College', 'COL Faculty', 'Part-Time', '92COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 3313, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 3313, '15-00183-1'),
(300290, 'JONATHAN', '', 'FERNANDO', 'College', 'COL Faculty', 'Part-Time', '300290COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7200, '', 0, 0, 0, 0, 0, 0, 320276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7200, '15-00227-6'),
(91, 'Elisa', 'Malig', 'Laqui', 'College', 'COL Faculty', 'Part-Time', '91COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6880, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6880, '01-11460-3'),
(240269, 'ALLYSSA', 'CANLAS', 'MANALO', 'College', 'COL Faculty', 'Part-Time', '240269COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7475, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7475, '15-00216-1'),
(340295, 'ANTHONY', ' ', 'RIVERA', 'College', 'COL Faculty', 'Probationary', '340295COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7035, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7035, '15-11502-7'),
(70240, 'Nino', 'Soriano', 'Ronquillo', 'College', 'COL Faculty', 'Part-Time', '70240COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 10328, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10328, '15-00149-1'),
(40, 'Erickson', 'Mariano', 'Salunga', 'College', 'COL Faculty', 'Part-Time', '40COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 7933, '', 0, 0, 0, 0, 0, 0, 320277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 7933, '15-00066-4'),
(130256, 'Joshua', ' ', 'Tiongco', 'College', 'COL Faculty', 'Regular', '130256COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 8800, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 8800, '15-00182-2'),
(80, 'Yvonne Victoria ', 'Lansang', 'Tolentino', 'College', 'COL Faculty', 'Part-Time', '80COL-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 2274, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 2274, '01-10375-0'),
(330294, 'EMMANUEL', 'MANALAC', 'MESINA', 'Administration', 'IT STAFF', 'Temporary', '330294ADM-DEC0606-2024', '2024-12-06 00:00:00', '2024-12-06 00:00:00', 1, 0, 0, 0, 0, 0, 0, 0, '13th Month', 6803, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6803, '15-11490-0'),
(310292, 'ABELARDO JR.', 'CASTRO', 'BAUTISTA', 'Administration', 'Maintenance', 'Probationary', '310292ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-00229-2'),
(96, 'Marivi', 'Zapanta', 'Carlos', 'Administration', 'Office Staff', 'Regular', '96ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 8504, 750, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 330276, 761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 19, '', 0, 8473, '15-00046-0'),
(144, 'Jaime Emmanuel ', 'A', 'Carlos', 'Administration', 'IT', 'Probationary', '144ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 9027, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 19, '', 0, 9008, '15-00164-4'),
(14, 'Mary Grace', 'Quioc', 'David', 'Administration', 'Registrar', 'Regular', '14ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 9130, 500, 0, 393, ' ', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10023, '01-01498-0'),
(118, 'Florence Grei', 'de Dios', 'Dejaresco', 'Administration', 'Accounting Clerk', 'Regular', '118ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 7297, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 300273, 577, 360280, 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 117, '', 0, 6081, '15-00056-7'),
(400311, 'REGGIE', 'BERNABE', 'DOMDOM', 'Administration', 'Maintenance', 'Probationary', '400311ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 5665, 0, 0, 0, 'overtime pay', 5060, 'holiday pay', 515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dec 10 to 13', 2060, '', 0, 9180, '15-11512-2'),
(65, 'Wilma', 'M', 'Enero', 'Administration', 'Maintenance', 'Temporary', '65ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 5665, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5665, '15-00155-5'),
(210, 'Monette', 'Laqui', 'Galang', 'Administration', 'Registrar', 'Regular', '210ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 10809, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 1474, 'lates', 43, 9292, '15-00110-5'),
(180256, 'MA. INESHA', 'NIRIC', 'GATCHALIAN', 'Administration', 'Office Staff', 'Probationary', '180256ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 0, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-00188-1'),
(80246, 'Jhoana', 'Gagui', 'Herrera', 'Administration', 'Maintenance', 'Part-Time', '80246ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5665, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5665, '15-00225-0'),
(270283, 'JEREMY MEREDITH', 'BANAL', 'JAIO', 'Administration', 'Office Staff', 'Probationary', '270283ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 226, '', 0, 5560, '15-00217-9'),
(1, 'JUAN', 'Torres', 'DELA CRUZ', 'Administration', 'IT Head', 'Regular', '1ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 24, 11, 6341, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6341, '15-00003-6'),
(229, 'Marlyn', 'B', 'Mendoza', 'Administration', 'Office Staff', 'Temporary', '229ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 10, 5921, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 7, '', 0, 5914, '15-00116-4'),
(210269, 'EDLYN', 'SINGIAN', 'MERCADO', 'Administration', 'Registrar', 'Temporary', '210269ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 10, 5921, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5921, '15-00196-2'),
(55, 'Raul', 'Guanlao', 'Mercado', 'Administration', 'Maintenance', 'Regular', '55ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 10, 6747, 1500, 0, 324, 'overtime pay', 1227, 'holiday pay', 613, 0, 0, 0, 0, 0, 0, 0, 230272, 781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9629, '01-09715-0'),
(330294, 'EMMANUEL', 'MANALAC', 'MESINA', 'Administration', 'IT STAFF', 'Temporary', '330294ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 10, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-11490-0'),
(430318, 'VERNARD', 'MALLARI', 'MIGUEL', 'Administration', 'IT', 'Contractual', '430318ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 9, 4378, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 4378, '15-11521-0'),
(26, 'Angelique', 'Sibal', 'Morales', 'Administration', 'Accounting Clerk', 'Regular', '26ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 9, 10051, 1133, 0, 385, '', 0, '', 0, 0, 0, 0, 0, 0, 40265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 42, '', 0, 11526, '01-05606-0'),
(77, 'Carlito', 'D', 'Nicdao', 'Administration', '', '', '77ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 9, 10000, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 10000, '15-00042-7'),
(187, 'Eden', 'S', 'Pucut', 'Administration', 'Maintenance', 'Temporary', '187ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 12, 6180, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6180, '15-11496-3'),
(125, 'Shareen Jenise', 'Alvaro', 'Carlos', 'Elementary', '', '', '125GS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7680, 0, 0, 0, '0', 0, '', 0, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6912, '15-00083-4'),
(410317, 'PRINCESS ROSETTE', 'MEDINA', 'ROBLES', 'Administration', 'Library Clerk', 'Contractual', '410317ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5665, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350280, 0, 0, 220, 0, 0, 0, 0, 0, 'lates', 57, '', 0, 5388, '15-11519-2'),
(217, 'Gina', 'A', 'Rocha', 'Administration', 'Guidance', 'Probationary', '217ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 10000, 2500, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 393, '', 0, 12107, '15-00111-3'),
(121, 'Diana Rose', 'Banzil', 'Ronquillo', 'Administration', 'Library Clerk', 'Regular', '121ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5786, '15-00059-1'),
(70239, 'Jojo', 'D', 'Ronquillo', 'Administration', 'Security', 'Part-Time', '70239ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5786, 500, 0, 0, 'overtime pay', 5168, 'holiday pay', 526, 0, 0, 0, 0, 0, 220270, 0, 0, 0, 350278, 2326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 9654, '15-00184-9'),
(165, 'Jovanne', 'Z', 'Rosalado', 'Administration', 'Security Guard', 'Probationary', '165ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5960, 0, 0, 0, 'overtime and holiday pay', 5865, 'adjustment on 13th month pay', 5530, 0, 0, 0, 0, 0, 210270, 761, 0, 0, 280271, 749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 15843, '15-00087-7'),
(222, 'Eduardo', 'Torno', 'Santos', 'Administration', 'Maintenance', 'Probationary', '222ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 6000, 500, 0, 0, 'overtime pay', 757, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 37, '', 0, 7220, '15-00112-1'),
(70234, 'Donna', 'Garcia', 'Tolentino', 'Administration', 'Clinic Aide', 'Part-Time', '70234ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5665, 0, 0, 0, 'overtime pay', 515, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6180, '15-00146-6'),
(220269, 'Sarah Claire', '', 'Tuquib', 'Administration', 'Accounting Staff', 'Probationary', '220269ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 5786, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 77, '', 0, 5709, '15-00200-4'),
(25, 'Misel', 'Mariano', 'Valencia', 'Administration', 'Purchasing Officer', 'Regular', '25ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 11, 11862, 1400, 0, 430, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 13692, '01-11023-0'),
(98, 'Ronnie', 'Turbanada', 'Guanlao', 'Administration', 'Library Clerk', '', '98ADM-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8049, 0, 0, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 370281, 620, 0, 0, 370280, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 1098, 'lates', 375, 5661, '15-00048-6'),
(300289, 'ANGELICA', 'DAVID', 'ASAS', 'Highschool', 'HS Faculty', 'Probationary', '300289HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7500, 250, 2710, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 119, '', 0, 10341, '15-00226-8'),
(340297, 'RICKY', 'SANTOS', 'BACANI', 'Highschool', 'HS Faculty', 'Probationary', '340297HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7500, 1000, 2240, 0, 'Substitution', 1430, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 12, '', 0, 12158, '15-11504-8'),
(380304, 'April', 'Calma', 'Cruz', 'Highschool', 'HS Faculty', 'Probationary', '380304HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 7500, 750, 2850, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 59, '', 0, 11041, '15-11506-4'),
(410311, 'MAY ANNE', 'OCAMPO', 'DE DIOS', 'Highschool', 'HS Faculty', 'Probationary', '410311HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 6500, 250, 1205, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370283, 0, 0, 525, 0, 0, 0, 0, 0, 'absences', 362, '', 0, 7068, '15-11514-3'),
(10237, 'Jaime III', 'Pring', 'Del Rosario', 'Highschool', 'HS Faculty', 'Contractual', '10237HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 8636, 750, 1402, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates/undertime', 249, '', 0, 10539, '15-00135-1'),
(210, 'Monette', 'Laqui', 'Galang', 'Highschool', 'HS Faculty', 'Regular', '210HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 0, 0, 5140, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 5140, '15-00110-5'),
(410314, 'WAYLON CARL', 'FAUSTO', 'GALANG', 'Highschool', 'HS Faculty', 'Probationary', '410314HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 6500, 500, 2288, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370285, 0, 0, 525, 0, 0, 0, 0, 0, 'lates', 88, '', 0, 8675, '15-11517-7'),
(98, 'Ronnie', 'Turbanada', 'Guanlao', 'Highschool', 'HS Faculty', 'Part-Time', '98HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 0, 0, 6250, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, 6250, '15-00048-6'),
(410315, 'MARC GLENN', 'ENRIQUEZ', 'GUEVARRA', 'Highschool', 'HS Faculty', 'Probationary', '410315HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 6500, 500, 2227, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370286, 0, 0, 525, 0, 0, 0, 0, 0, 'lates', 47, '', 0, 8655, '15-11516-9'),
(75, 'Eugene', 'Lobo', 'Lansang', 'Highschool', 'HS Faculty', 'Regular', '75HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 12208, 1000, 3355, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lates', 147, '', 0, 16416, '15-00034-6'),
(71, 'Frano', 'Ricafort', 'Maglalang', 'Highschool', 'HS Faculty', 'Regular', '71HS-DEC0115-2024', '2024-12-01 00:00:00', '2024-12-15 00:00:00', 1, 0, 0, 6, 10001, 500, 3750, 0, '0', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 380280, 717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'absences', 648, 'lates', 119, 12767, '15-00040-1');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `usertype`, `firstname`, `lastname`, `department`) VALUES
(0, 'testuser1', '12345678', 'user', 'test', 'layug', 'Junior HS'),
(1, '1', '12345678', 'admin', 'JUAN', 'DELA CRUZ', 'Administrator'),
(777, '777', '12345678', 'user', 'Pedro', 'Cruz', 'Elementary'),
(2, '2', '12345678', 'HR', 'mary', 'mary', 'Administrator'),
(68, '68', '12345678', 'user', 'Testing', 'Testing', 'Elementary');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `empid` int(11) NOT NULL,
  `test` varchar(30) NOT NULL,
  `dtefrom` datetime NOT NULL,
  `dteto` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
