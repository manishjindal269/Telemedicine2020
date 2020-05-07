-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for telemedicine_db
CREATE DATABASE IF NOT EXISTS `telemedicine_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `telemedicine_db`;

-- Dumping structure for table telemedicine_db.attachmenttype_master
CREATE TABLE IF NOT EXISTS `attachmenttype_master` (
  `AttachmentType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `AttachmentType_Code` char(5) NOT NULL,
  `AttachmentType_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`AttachmentType_Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.attachmenttype_master: ~3 rows (approximately)
DELETE FROM `attachmenttype_master`;
/*!40000 ALTER TABLE `attachmenttype_master` DISABLE KEYS */;
INSERT INTO `attachmenttype_master` (`AttachmentType_Id`, `AttachmentType_Code`, `AttachmentType_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, '', 'प्रभावित अंग की फोटो ', b'1', b'0', 1, '2020-05-05 12:11:39', '127.0.0.1'),
	(2, '', 'ब्लड रिपोर्ट ', b'1', b'0', 1, '2020-05-05 12:11:58', '127.0.0.1'),
	(3, '', 'यूरिन रिपोर्ट ', b'1', b'0', 1, '2020-05-05 12:12:15', '127.0.0.1');
/*!40000 ALTER TABLE `attachmenttype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.attachment_transaction
CREATE TABLE IF NOT EXISTS `attachment_transaction` (
  `Attachment_Transaction_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Case_Transaction_Id` int(11) NOT NULL,
  `AttachementType_Id` int(11) NOT NULL,
  `Attachment_FileName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Attachment_Transaction_Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.attachment_transaction: ~0 rows (approximately)
DELETE FROM `attachment_transaction`;
/*!40000 ALTER TABLE `attachment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment_transaction` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.case_registration
CREATE TABLE IF NOT EXISTS `case_registration` (
  `Case_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Patient_Id` int(11) NOT NULL,
  `SignSymptoms` varchar(300) NOT NULL,
  `Latitude` decimal(20,18) NOT NULL,
  `Longitude` decimal(20,18) NOT NULL,
  `Pending_With` int(11) NOT NULL DEFAULT '0',
  `Is_Closed` bit(1) NOT NULL DEFAULT b'0',
  `Reason_Id` int(11) NOT NULL DEFAULT '0',
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Case_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.case_registration: ~0 rows (approximately)
DELETE FROM `case_registration`;
/*!40000 ALTER TABLE `case_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_registration` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.case_transaction
CREATE TABLE IF NOT EXISTS `case_transaction` (
  `Case_Transaction_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Case_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `TransactionType_Id` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Case_Transaction_Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.case_transaction: ~0 rows (approximately)
DELETE FROM `case_transaction`;
/*!40000 ALTER TABLE `case_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_transaction` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.district_master
CREATE TABLE IF NOT EXISTS `district_master` (
  `District_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Regional_Id` int(11) NOT NULL,
  `District_Code` char(5) NOT NULL,
  `District_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`District_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.district_master: ~28 rows (approximately)
DELETE FROM `district_master`;
/*!40000 ALTER TABLE `district_master` DISABLE KEYS */;
INSERT INTO `district_master` (`District_Id`, `Regional_Id`, `District_Code`, `District_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, 2, '0', 'Balod', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(2, 3, '0', 'Baloda Bazar', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(3, 5, '0', 'Balrampur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(4, 1, '0', 'Bastar', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(5, 2, '0', 'Bemetara', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(6, 1, '0', 'Bijapur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(7, 4, '0', 'Bilaspur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(8, 1, '0', 'Dantewada', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(9, 3, '0', 'Dhamtari', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(10, 2, '0', 'Durg', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(11, 3, '0', 'Gariaband', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(12, 4, '0', 'Gaurela-Pendra-Marwahi', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(13, 4, '0', 'Janjgir-Champa', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(14, 5, '0', 'Jashpur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(15, 2, '0', 'Kabirdham', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(16, 1, '0', 'Kanker', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(17, 1, '0', 'Kondagaon', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(18, 4, '0', 'Korba', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(19, 5, '0', 'Korea', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(20, 3, '0', 'Mahasamund', b'1', b'0', 1, '2020-05-03 00:00:00', '1'),
	(21, 4, '0', 'Mungeli', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(22, 1, '0', 'Narayanpur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(23, 4, '0', 'Raigarh', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(24, 3, '0', 'Raipur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(25, 2, '0', 'Rajnandgaon', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(26, 1, '0', 'Sukma', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(27, 5, '0', 'Surajpur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(28, 5, '0', 'Surguja', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1');
/*!40000 ALTER TABLE `district_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.gender_master
CREATE TABLE IF NOT EXISTS `gender_master` (
  `Gender_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Gender_Code` char(5) NOT NULL,
  `Gender_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Gender_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.gender_master: ~2 rows (approximately)
DELETE FROM `gender_master`;
/*!40000 ALTER TABLE `gender_master` DISABLE KEYS */;
INSERT INTO `gender_master` (`Gender_Id`, `Gender_Code`, `Gender_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, '0', 'Male', b'1', b'0', 1, '2020-05-04 14:32:16', '127.0.0.1'),
	(2, '0', 'Female', b'1', b'0', 1, '2020-05-04 14:32:16', '127.0.0.1');
/*!40000 ALTER TABLE `gender_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.hsp_registration
CREATE TABLE IF NOT EXISTS `hsp_registration` (
  `HSP_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_Id` int(11) NOT NULL,
  `HSP_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Gender_Id` int(11) DEFAULT NULL,
  `Qualification_Id` int(11) DEFAULT NULL,
  `Mobile_No` char(10) DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Pincode` char(6) NOT NULL,
  `Address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `District_Id` int(11) NOT NULL,
  `Tehsil_Id` int(11) NOT NULL,
  `Village_Id` int(11) NOT NULL,
  `Latitude` decimal(20,18) NOT NULL,
  `Longitude` decimal(20,18) NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`HSP_Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.hsp_registration: ~0 rows (approximately)
DELETE FROM `hsp_registration`;
/*!40000 ALTER TABLE `hsp_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `hsp_registration` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.hsp_transaction
CREATE TABLE IF NOT EXISTS `hsp_transaction` (
  `HSP_Transaction_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Case_Transaction_Id` int(11) DEFAULT NULL,
  `HSP_Id` int(11) DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`HSP_Transaction_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.hsp_transaction: ~0 rows (approximately)
DELETE FROM `hsp_transaction`;
/*!40000 ALTER TABLE `hsp_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `hsp_transaction` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.identityproof_master
CREATE TABLE IF NOT EXISTS `identityproof_master` (
  `IdentityProof_Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdentityProof_Code` char(5) NOT NULL,
  `IdentityProof_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`IdentityProof_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.identityproof_master: ~6 rows (approximately)
DELETE FROM `identityproof_master`;
/*!40000 ALTER TABLE `identityproof_master` DISABLE KEYS */;
INSERT INTO `identityproof_master` (`IdentityProof_Id`, `IdentityProof_Code`, `IdentityProof_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, '0', 'PAN CARD', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(2, '0', 'ADHAAR(UID)', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(3, '0', 'DRIVING LICENSE', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(4, '0', 'PASSPORT', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(5, '0', 'RATION CARD', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(6, '0', 'ELECTION ID CARD', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1');
/*!40000 ALTER TABLE `identityproof_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.labsubtest_master
CREATE TABLE IF NOT EXISTS `labsubtest_master` (
  `LabSubTest_Id` int(11) NOT NULL AUTO_INCREMENT,
  `LabTest_Id` int(11) DEFAULT NULL,
  `LabSubTest_Code` char(5) DEFAULT NULL,
  `LabSubTest_Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`LabSubTest_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.labsubtest_master: ~0 rows (approximately)
DELETE FROM `labsubtest_master`;
/*!40000 ALTER TABLE `labsubtest_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `labsubtest_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.labtest_master
CREATE TABLE IF NOT EXISTS `labtest_master` (
  `LabTest_Id` int(11) NOT NULL AUTO_INCREMENT,
  `LabTest_Code` char(5) DEFAULT NULL,
  `LabTest_Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`LabTest_Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.labtest_master: ~0 rows (approximately)
DELETE FROM `labtest_master`;
/*!40000 ALTER TABLE `labtest_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `labtest_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.labtest_transaction
CREATE TABLE IF NOT EXISTS `labtest_transaction` (
  `LabTest_Transaction_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Case_Transaction_Id` int(11) DEFAULT NULL,
  `Lab_Id` int(11) DEFAULT NULL,
  `LabTest_Id` int(11) DEFAULT NULL,
  `LabSubTest_Id` int(11) DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`LabTest_Transaction_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.labtest_transaction: ~0 rows (approximately)
DELETE FROM `labtest_transaction`;
/*!40000 ALTER TABLE `labtest_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `labtest_transaction` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.labtype_master
CREATE TABLE IF NOT EXISTS `labtype_master` (
  `LabType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `LabType__Code` char(5) DEFAULT NULL,
  `LabType__Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`LabType_Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.labtype_master: ~0 rows (approximately)
DELETE FROM `labtype_master`;
/*!40000 ALTER TABLE `labtype_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `labtype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.lab_mapping
CREATE TABLE IF NOT EXISTS `lab_mapping` (
  `Lab_Mapping_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Lab_Id` int(11) NOT NULL,
  `LabTest_Id` int(11) NOT NULL,
  `LabSubTest_Id` int(11) NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Lab_Mapping_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.lab_mapping: ~0 rows (approximately)
DELETE FROM `lab_mapping`;
/*!40000 ALTER TABLE `lab_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_mapping` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.lab_registration
CREATE TABLE IF NOT EXISTS `lab_registration` (
  `Lab_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_Id` int(11) NOT NULL,
  `LabType_Id` int(11) NOT NULL,
  `Lab_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Mobile_No` char(10) NOT NULL,
  `Email_Id` varchar(45) NOT NULL,
  `Pincode` char(6) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `District_Id` int(11) NOT NULL,
  `Tehsil_Id` int(11) NOT NULL,
  `Village_Id` int(11) NOT NULL,
  `Latitude` decimal(20,18) NOT NULL,
  `Longitude` decimal(20,18) NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Lab_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.lab_registration: ~0 rows (approximately)
DELETE FROM `lab_registration`;
/*!40000 ALTER TABLE `lab_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_registration` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.loginaccess_log
CREATE TABLE IF NOT EXISTS `loginaccess_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) NOT NULL,
  `Login_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Logout_DateTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `Device_Id` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.loginaccess_log: ~0 rows (approximately)
DELETE FROM `loginaccess_log`;
/*!40000 ALTER TABLE `loginaccess_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginaccess_log` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.medicinetype_master
CREATE TABLE IF NOT EXISTS `medicinetype_master` (
  `MedicineType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `MedicineType_Code` char(5) NOT NULL,
  `MedicineType_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`MedicineType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.medicinetype_master: ~0 rows (approximately)
DELETE FROM `medicinetype_master`;
/*!40000 ALTER TABLE `medicinetype_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicinetype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.medicine_master
CREATE TABLE IF NOT EXISTS `medicine_master` (
  `Medicine_Id` int(11) NOT NULL AUTO_INCREMENT,
  `MedicineType_Id` int(11) DEFAULT NULL,
  `Medicine_Code` char(5) DEFAULT NULL,
  `Medicine_Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`Medicine_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.medicine_master: ~0 rows (approximately)
DELETE FROM `medicine_master`;
/*!40000 ALTER TABLE `medicine_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.menu_master
CREATE TABLE IF NOT EXISTS `menu_master` (
  `Menu_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Menu_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Area` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Controller` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Action_Method` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Parent_Menu_Id` int(11) NOT NULL DEFAULT '0',
  `Display_SerialNo` int(11) NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Menu_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.menu_master: ~0 rows (approximately)
DELETE FROM `menu_master`;
/*!40000 ALTER TABLE `menu_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.otp_verification
CREATE TABLE IF NOT EXISTS `otp_verification` (
  `OTP_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mobile_No` char(10) NOT NULL,
  `Email_Id` varchar(50) DEFAULT NULL,
  `OTP` char(6) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(50) NOT NULL,
  `Is_Verified` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`OTP_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.otp_verification: ~0 rows (approximately)
DELETE FROM `otp_verification`;
/*!40000 ALTER TABLE `otp_verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp_verification` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.patient_registration
CREATE TABLE IF NOT EXISTS `patient_registration` (
  `Patient_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_Id` int(11) NOT NULL DEFAULT '0',
  `Relationship_Id` int(11) NOT NULL DEFAULT '0',
  `Patient_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `DOB` datetime NOT NULL,
  `Age` int(4) NOT NULL,
  `Mobile_No` char(10) DEFAULT '',
  `Email_Id` varchar(45) DEFAULT NULL,
  `Gender_Id` int(11) DEFAULT '0',
  `Pincode` char(6) DEFAULT NULL,
  `Address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `District_Id` int(11) DEFAULT NULL,
  `Tehsil_Id` int(11) DEFAULT NULL,
  `Village_Id` int(11) DEFAULT NULL,
  `Latitude` decimal(20,18) NOT NULL DEFAULT '0.000000000000000000',
  `Longitude` decimal(20,18) NOT NULL DEFAULT '0.000000000000000000',
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Patient_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.patient_registration: ~0 rows (approximately)
DELETE FROM `patient_registration`;
/*!40000 ALTER TABLE `patient_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_registration` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.pharmacytype_master
CREATE TABLE IF NOT EXISTS `pharmacytype_master` (
  `PharmacyType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `PharmacyType_Code` char(5) NOT NULL,
  `PharmacyType_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`PharmacyType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.pharmacytype_master: ~0 rows (approximately)
DELETE FROM `pharmacytype_master`;
/*!40000 ALTER TABLE `pharmacytype_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacytype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.pharmacy_mapping
CREATE TABLE IF NOT EXISTS `pharmacy_mapping` (
  `Pharmacy_Mapping_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pharmacy_Id` int(11) NOT NULL,
  `Medicine_Id` int(11) NOT NULL,
  `MedicineType_Id` int(11) NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Pharmacy_Mapping_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.pharmacy_mapping: ~0 rows (approximately)
DELETE FROM `pharmacy_mapping`;
/*!40000 ALTER TABLE `pharmacy_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_mapping` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.pharmacy_registration
CREATE TABLE IF NOT EXISTS `pharmacy_registration` (
  `Pharmacy_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_Id` int(11) NOT NULL,
  `PharmacyType_Id` int(11) NOT NULL,
  `Pharmacy_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Mobile_No` char(10) NOT NULL,
  `Email_Id` varchar(45) NOT NULL,
  `Pincode` char(6) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `District_Id` int(11) NOT NULL,
  `Tehsil_Id` int(11) NOT NULL,
  `Village_Id` int(11) NOT NULL,
  `Latitude` decimal(20,18) NOT NULL,
  `Longitude` decimal(20,18) NOT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`Pharmacy_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.pharmacy_registration: ~0 rows (approximately)
DELETE FROM `pharmacy_registration`;
/*!40000 ALTER TABLE `pharmacy_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_registration` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.prescription_transaction
CREATE TABLE IF NOT EXISTS `prescription_transaction` (
  `Prescription_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Case_Transaction_Id` int(11) NOT NULL,
  `Medicine_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`Prescription_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.prescription_transaction: ~0 rows (approximately)
DELETE FROM `prescription_transaction`;
/*!40000 ALTER TABLE `prescription_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription_transaction` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.qualification_master
CREATE TABLE IF NOT EXISTS `qualification_master` (
  `Quanlification_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_Code` char(5) NOT NULL,
  `Quanlification_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Quanlification_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.qualification_master: ~0 rows (approximately)
DELETE FROM `qualification_master`;
/*!40000 ALTER TABLE `qualification_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualification_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.reason_master
CREATE TABLE IF NOT EXISTS `reason_master` (
  `Reason_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Reason_Code` char(5) NOT NULL,
  `Reason_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Reason_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.reason_master: ~0 rows (approximately)
DELETE FROM `reason_master`;
/*!40000 ALTER TABLE `reason_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `reason_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.regional_master
CREATE TABLE IF NOT EXISTS `regional_master` (
  `Regional_Id` int(11) NOT NULL AUTO_INCREMENT,
  `State_Id` int(11) DEFAULT NULL,
  `Regional_Code` char(5) DEFAULT NULL,
  `Regional_Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`Regional_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.regional_master: ~5 rows (approximately)
DELETE FROM `regional_master`;
/*!40000 ALTER TABLE `regional_master` DISABLE KEYS */;
INSERT INTO `regional_master` (`Regional_Id`, `State_Id`, `Regional_Code`, `Regional_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, 1, '0', 'Bastar', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(2, 1, '0', 'Durg', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(3, 1, '0', 'Raipur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(4, 1, '0', 'Bilaspur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(5, 1, '0', 'Surguja', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1');
/*!40000 ALTER TABLE `regional_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.relationship_master
CREATE TABLE IF NOT EXISTS `relationship_master` (
  `Relationship_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Relationship_Code` char(5) DEFAULT NULL,
  `Relationship_Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`Relationship_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.relationship_master: ~7 rows (approximately)
DELETE FROM `relationship_master`;
/*!40000 ALTER TABLE `relationship_master` DISABLE KEYS */;
INSERT INTO `relationship_master` (`Relationship_Id`, `Relationship_Code`, `Relationship_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, NULL, 'FATHER', b'1', b'0', 1, '2020-05-04 14:30:04', '127.0.0.1'),
	(2, NULL, 'MOTHER', b'1', b'0', 1, '2020-05-04 14:30:04', '127.0.0.1'),
	(3, NULL, 'BROTHER', b'1', b'0', 1, '2020-05-04 14:30:20', '127.0.0.1'),
	(4, NULL, 'SISTER', b'1', b'0', 1, '2020-05-04 14:30:20', '127.0.0.1'),
	(5, NULL, 'SPOUSE', b'1', b'0', 1, '2020-05-04 14:30:30', '127.0.0.1'),
	(6, NULL, 'SON', b'1', b'0', 1, '2020-05-04 14:30:32', '127.0.0.1'),
	(7, NULL, 'DAUGHTER', b'1', b'0', 1, '2020-05-04 14:35:05', '127.0.0.1');
/*!40000 ALTER TABLE `relationship_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.roletype_master
CREATE TABLE IF NOT EXISTS `roletype_master` (
  `RoleType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleType_Code` char(5) NOT NULL,
  `RoleType_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`RoleType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.roletype_master: ~0 rows (approximately)
DELETE FROM `roletype_master`;
/*!40000 ALTER TABLE `roletype_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `roletype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.role_master
CREATE TABLE IF NOT EXISTS `role_master` (
  `Role_Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleType_Id` int(11) NOT NULL DEFAULT '0',
  `Role_Code` char(5) NOT NULL,
  `Role_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Role_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.role_master: ~0 rows (approximately)
DELETE FROM `role_master`;
/*!40000 ALTER TABLE `role_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.state_master
CREATE TABLE IF NOT EXISTS `state_master` (
  `State_Id` int(11) NOT NULL AUTO_INCREMENT,
  `State_Code` char(5) NOT NULL,
  `State_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`State_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.state_master: ~1 rows (approximately)
DELETE FROM `state_master`;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` (`State_Id`, `State_Code`, `State_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, '0', 'CHHATTISGARH', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1');
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.symptomstype_master
CREATE TABLE IF NOT EXISTS `symptomstype_master` (
  `SymptomsType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `SymptomsType_Code` char(5) NOT NULL,
  `SymptomsType_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`SymptomsType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.symptomstype_master: ~0 rows (approximately)
DELETE FROM `symptomstype_master`;
/*!40000 ALTER TABLE `symptomstype_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `symptomstype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.tehsil_master
CREATE TABLE IF NOT EXISTS `tehsil_master` (
  `Tehsil_Id` int(11) NOT NULL AUTO_INCREMENT,
  `District_Id` int(11) NOT NULL,
  `Tehsil_Code` char(5) NOT NULL DEFAULT '0',
  `Tehsil_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Tehsil_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.tehsil_master: ~15 rows (approximately)
DELETE FROM `tehsil_master`;
/*!40000 ALTER TABLE `tehsil_master` DISABLE KEYS */;
INSERT INTO `tehsil_master` (`Tehsil_Id`, `District_Id`, `Tehsil_Code`, `Tehsil_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, 24, '', 'Raipur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(2, 24, '', 'Arang', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(3, 24, '', 'Baloda Bazar', b'1', b'0', 1, '2020-05-03 00:00:00', '1'),
	(4, 24, '', 'Abhanpur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(5, 24, '', 'Tilda', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(6, 24, '', 'Bilaigarh', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(7, 24, '', 'Kasdol', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(8, 24, '', 'Simga', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(9, 24, '', 'Bhatapara', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(10, 24, '', 'Palari', b'1', b'0', 1, '2020-05-03 00:00:00', '1'),
	(11, 24, '', 'Rajim', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(12, 24, '', 'Mainpur', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(13, 24, '', 'Chhura', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(14, 24, '', 'Gariyaband', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1'),
	(15, 24, '', 'Deobhog', b'1', b'0', 1, '2020-05-03 00:00:00', '127.0.0.1');
/*!40000 ALTER TABLE `tehsil_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.transactiontype_master
CREATE TABLE IF NOT EXISTS `transactiontype_master` (
  `TransactionType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `TransactionType_Code` char(5) NOT NULL,
  `TransactionType_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`TransactionType_Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.transactiontype_master: ~6 rows (approximately)
DELETE FROM `transactiontype_master`;
/*!40000 ALTER TABLE `transactiontype_master` DISABLE KEYS */;
INSERT INTO `transactiontype_master` (`TransactionType_Id`, `TransactionType_Code`, `TransactionType_Name`, `Is_Active`, `Is_Delete`, `Created_By`, `Created_On`, `Created_IP`) VALUES
	(1, '', 'Case Registration', b'1', b'0', 1, '2020-05-04 10:38:41', '127.0.0.1'),
	(2, '', 'Assign HSP', b'1', b'0', 1, '2020-05-04 10:39:00', '127.0.0.1'),
	(3, '', 'Prescription', b'1', b'0', 1, '2020-05-04 10:40:06', '127.0.0.1'),
	(4, '', 'On Call Description', b'1', b'0', 1, '2020-05-04 10:40:43', '127.0.0.1'),
	(5, '', 'Schedule Appointment', b'1', b'0', 1, '2020-05-04 10:41:00', '127.0.0.1'),
	(6, '', 'Order Test', b'1', b'0', 1, '2020-05-06 12:36:21', '127.0.0.1');
/*!40000 ALTER TABLE `transactiontype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.usertype_master
CREATE TABLE IF NOT EXISTS `usertype_master` (
  `UserType_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Role_Id` int(11) NOT NULL,
  `UserType_Code` char(5) DEFAULT NULL,
  `UserType_Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`UserType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.usertype_master: ~0 rows (approximately)
DELETE FROM `usertype_master`;
/*!40000 ALTER TABLE `usertype_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertype_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.user_master
CREATE TABLE IF NOT EXISTS `user_master` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` char(10) NOT NULL,
  `Password` varbinary(32) NOT NULL,
  `Pwd_Salt` varbinary(32) NOT NULL,
  `Applicant_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Mobile_No` char(10) NOT NULL,
  `Role_Id` int(11) NOT NULL,
  `UserType_Id` int(11) NOT NULL,
  `District_Id` int(11) NOT NULL,
  `IdentityProof_Id` int(11) DEFAULT NULL,
  `IdentityProof_FileName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Is_Mailed` bit(1) DEFAULT NULL,
  `Is_SMS` bit(1) DEFAULT NULL,
  `Is_Approved` bit(1) DEFAULT NULL,
  `Is_Active` bit(1) DEFAULT b'1',
  `Is_Delete` bit(1) DEFAULT b'0',
  `Is_PasswordChanged` bit(1) DEFAULT NULL,
  `Is_LoggedIn` bit(1) DEFAULT NULL,
  `Last_OTP` char(6) DEFAULT NULL,
  `Last_OTP_DateTme` timestamp NULL DEFAULT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Created_On` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) DEFAULT NULL,
  `Approved_By` int(11) DEFAULT NULL,
  `Approved_On` timestamp NULL DEFAULT NULL,
  `Approved_IP` varchar(39) DEFAULT NULL,
  `Auth_Key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`User_Id`),
  UNIQUE KEY `User_Name` (`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.user_master: ~0 rows (approximately)
DELETE FROM `user_master`;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;

-- Dumping structure for table telemedicine_db.village_master
CREATE TABLE IF NOT EXISTS `village_master` (
  `Village_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tehsil_Id` int(11) NOT NULL,
  `Village_Code` char(5) NOT NULL DEFAULT '0',
  `Village_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Is_Active` bit(1) NOT NULL DEFAULT b'1',
  `Is_Delete` bit(1) NOT NULL DEFAULT b'0',
  `Created_By` int(11) NOT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Created_IP` varchar(39) NOT NULL,
  PRIMARY KEY (`Village_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table telemedicine_db.village_master: ~0 rows (approximately)
DELETE FROM `village_master`;
/*!40000 ALTER TABLE `village_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `village_master` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
