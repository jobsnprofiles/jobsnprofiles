-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2019 at 07:22 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orgnitya_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `jnp_cities`
--

CREATE TABLE `jnp_cities` (
  `id` int(8) NOT NULL,
  `code` int(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `countrycode` varchar(5) NOT NULL DEFAULT 'US',
  `statecode` varchar(50) DEFAULT NULL,
  `countycode` varchar(50) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jnp_resumes`
--

CREATE TABLE `jnp_resumes` (
  `resume_id` int(120) UNSIGNED NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `jobseeker_id` int(120) NOT NULL,
  `jobseeker_group_id` int(60) NOT NULL,
  `resume_title` varchar(200) NOT NULL DEFAULT '',
  `first_name` varchar(200) NOT NULL,
  `middle_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `work_phone` varchar(60) NOT NULL,
  `home_phone` varchar(60) NOT NULL,
  `mobile` varchar(60) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `categories` int(60) NOT NULL,
  `subcategory` int(60) NOT NULL,
  `job_type` int(60) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `photo` varchar(60) NOT NULL,
  `resume_file` varchar(60) NOT NULL,
  `salary` int(60) NOT NULL,
  `negotiable` tinyint(1) NOT NULL,
  `hourly_pay` decimal(15,2) NOT NULL,
  `education` int(60) NOT NULL,
  `experience` varchar(60) NOT NULL,
  `work_permit` int(60) NOT NULL,
  `date_start` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `address_1` text NOT NULL,
  `state_1` varchar(60) NOT NULL,
  `city_1` int(60) NOT NULL,
  `zipcode_1` varchar(60) NOT NULL,
  `areacode_1` varchar(11) NOT NULL,
  `address_2` text NOT NULL,
  `state_2` varchar(60) NOT NULL,
  `city_2` int(60) NOT NULL,
  `zipcode_2` varchar(60) NOT NULL,
  `areacode_2` varchar(11) NOT NULL,
  `education_institute_1` text NOT NULL,
  `education_state_1` varchar(60) NOT NULL,
  `education_city_1` int(60) NOT NULL,
  `education_zipcode_1` varchar(60) NOT NULL,
  `education_areacode_1` varchar(11) NOT NULL,
  `education_study_1` text NOT NULL,
  `education_certificate_1` text NOT NULL,
  `education_yearcertify_1` int(60) NOT NULL,
  `education_institute_2` text NOT NULL,
  `education_state_2` varchar(60) NOT NULL,
  `education_city_2` int(60) NOT NULL,
  `education_zipcode_2` varchar(60) NOT NULL,
  `education_areacode_2` varchar(11) NOT NULL,
  `education_study_2` text NOT NULL,
  `education_certificate_2` text NOT NULL,
  `education_yearcertify_2` int(60) NOT NULL,
  `education_institute_3` text NOT NULL,
  `education_state_3` varchar(60) NOT NULL,
  `education_city_3` int(60) NOT NULL,
  `education_zipcode_3` varchar(60) NOT NULL,
  `education_areacode_3` varchar(11) NOT NULL,
  `education_study_3` text NOT NULL,
  `education_certificate_3` text NOT NULL,
  `education_yearcertify_3` int(60) NOT NULL,
  `employer_position_1` varchar(200) NOT NULL,
  `employer_state_1` varchar(60) NOT NULL,
  `employer_city_1` int(60) NOT NULL,
  `employer_startyear_1` int(60) NOT NULL,
  `employer_endyear_1` int(60) NOT NULL,
  `employer_position_2` varchar(200) NOT NULL,
  `employer_state_2` varchar(60) NOT NULL,
  `employer_city_2` int(60) NOT NULL,
  `employer_startyear_2` int(60) NOT NULL,
  `employer_endyear_2` int(60) NOT NULL,
  `employer_position_3` varchar(200) NOT NULL,
  `employer_state_3` varchar(60) NOT NULL,
  `employer_city_3` int(60) NOT NULL,
  `employer_startyear_3` int(60) NOT NULL,
  `employer_endyear_3` int(60) NOT NULL,
  `skill_name_1` varchar(200) NOT NULL,
  `skill_lastused_1` int(60) NOT NULL,
  `skill_yearexp_1` int(60) NOT NULL,
  `skill_name_2` varchar(200) NOT NULL,
  `skill_lastused_2` int(60) NOT NULL,
  `skill_yearexp_2` int(60) NOT NULL,
  `skill_name_3` varchar(200) NOT NULL,
  `skill_lastused_3` int(60) NOT NULL,
  `skill_yearexp_3` int(60) NOT NULL,
  `skill_name_4` varchar(200) NOT NULL,
  `skill_lastused_4` int(60) NOT NULL,
  `skill_yearexp_4` int(60) NOT NULL,
  `skill_name_5` varchar(200) NOT NULL,
  `skill_lastused_5` int(60) NOT NULL,
  `skill_yearexp_5` int(60) NOT NULL,
  `text_resume` longtext NOT NULL,
  `reference_name_1` varchar(200) NOT NULL,
  `reference_phone_1` varchar(60) NOT NULL DEFAULT '',
  `reference_relation_1` varchar(120) NOT NULL DEFAULT '',
  `reference_state_1` varchar(60) NOT NULL,
  `reference_city_1` int(60) NOT NULL,
  `reference_zipcode_1` varchar(60) NOT NULL,
  `reference_areacode_1` varchar(11) NOT NULL,
  `reference_name_2` varchar(200) NOT NULL,
  `reference_phone_2` varchar(60) NOT NULL DEFAULT '',
  `reference_relation_2` varchar(120) NOT NULL DEFAULT '',
  `reference_state_2` varchar(60) NOT NULL,
  `reference_city_2` int(60) NOT NULL,
  `reference_zipcode_2` varchar(60) NOT NULL,
  `reference_areacode_2` varchar(11) NOT NULL,
  `location_state_1` varchar(60) NOT NULL,
  `location_city_1` int(60) NOT NULL,
  `location_state_2` varchar(60) NOT NULL,
  `location_city_2` int(60) NOT NULL,
  `location_state_3` varchar(60) NOT NULL,
  `location_city_3` int(60) NOT NULL,
  `location_state_4` varchar(60) NOT NULL,
  `location_city_4` int(60) NOT NULL,
  `location_state_5` varchar(60) NOT NULL,
  `location_city_5` int(60) NOT NULL,
  `travel` tinyint(1) NOT NULL DEFAULT '0',
  `relocate` tinyint(1) NOT NULL DEFAULT '0',
  `telecommute` tinyint(1) NOT NULL DEFAULT '0',
  `blog_link` varchar(200) NOT NULL DEFAULT '',
  `twitter_link` varchar(200) NOT NULL DEFAULT '',
  `facebook_link` varchar(200) NOT NULL DEFAULT '',
  `linkedin_link` varchar(200) NOT NULL DEFAULT '',
  `video_name` varchar(160) NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jnp_users`
--

CREATE TABLE `jnp_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_action_logs`
--

CREATE TABLE `m6rmq_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_action_logs_extensions`
--

CREATE TABLE `m6rmq_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_action_logs_users`
--

CREATE TABLE `m6rmq_action_logs_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `notify` tinyint(1) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_action_log_config`
--

CREATE TABLE `m6rmq_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_action`
--

CREATE TABLE `m6rmq_acymailing_action` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `frequency` int(10) UNSIGNED NOT NULL,
  `nextdate` int(10) UNSIGNED NOT NULL,
  `description` text,
  `server` varchar(255) NOT NULL,
  `port` varchar(50) NOT NULL,
  `connection_method` varchar(10) NOT NULL DEFAULT '0',
  `secure_method` varchar(10) NOT NULL DEFAULT '0',
  `self_signed` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `conditions` text,
  `actions` text,
  `report` text,
  `delete_wrong_emails` tinyint(4) NOT NULL DEFAULT '0',
  `senderfrom` tinyint(4) NOT NULL DEFAULT '0',
  `senderto` tinyint(4) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_config`
--

CREATE TABLE `m6rmq_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_fields`
--

CREATE TABLE `m6rmq_acymailing_fields` (
  `fieldid` smallint(5) UNSIGNED NOT NULL,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` smallint(5) UNSIGNED DEFAULT '99',
  `options` text,
  `core` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `backend` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontform` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `default` longtext,
  `listing` tinyint(3) UNSIGNED DEFAULT NULL,
  `frontlisting` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `fieldcat` int(11) NOT NULL DEFAULT '0',
  `listingfilter` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontlistingfilter` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_filter`
--

CREATE TABLE `m6rmq_acymailing_filter` (
  `filid` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) UNSIGNED DEFAULT NULL,
  `lasttime` int(10) UNSIGNED DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  `daycron` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_forward`
--

CREATE TABLE `m6rmq_acymailing_forward` (
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `nbforwarded` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_geolocation`
--

CREATE TABLE `m6rmq_acymailing_geolocation` (
  `geolocation_id` int(10) UNSIGNED NOT NULL,
  `geolocation_subid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  `geolocation_continent` varchar(255) NOT NULL DEFAULT '',
  `geolocation_timezone` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_history`
--

CREATE TABLE `m6rmq_acymailing_history` (
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_list`
--

CREATE TABLE `m6rmq_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `listid` smallint(5) UNSIGNED NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) NOT NULL DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_listcampaign`
--

CREATE TABLE `m6rmq_acymailing_listcampaign` (
  `campaignid` smallint(5) UNSIGNED NOT NULL,
  `listid` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_listmail`
--

CREATE TABLE `m6rmq_acymailing_listmail` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_listsub`
--

CREATE TABLE `m6rmq_acymailing_listsub` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `subdate` int(10) UNSIGNED DEFAULT NULL,
  `unsubdate` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_mail`
--

CREATE TABLE `m6rmq_acymailing_mail` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) UNSIGNED DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `lastupdate` int(10) UNSIGNED DEFAULT NULL,
  `userlastupdate` int(10) UNSIGNED DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `bccaddresses` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification','action','article') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `favicon` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) UNSIGNED DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_queue`
--

CREATE TABLE `m6rmq_acymailing_queue` (
  `senddate` int(10) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `priority` tinyint(3) UNSIGNED DEFAULT '3',
  `try` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_rules`
--

CREATE TABLE `m6rmq_acymailing_rules` (
  `ruleid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_stats`
--

CREATE TABLE `m6rmq_acymailing_stats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `senthtml` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senttext` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senddate` int(10) UNSIGNED NOT NULL,
  `openunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `opentotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `fail` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `clicktotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `unsub` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forward` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `bouncedetails` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_subscriber`
--

CREATE TABLE `m6rmq_acymailing_subscriber` (
  `subid` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `created` int(10) UNSIGNED DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastsent_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL DEFAULT '',
  `filterflags` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_tag`
--

CREATE TABLE `m6rmq_acymailing_tag` (
  `tagid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_tagmail`
--

CREATE TABLE `m6rmq_acymailing_tagmail` (
  `tagid` smallint(5) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_template`
--

CREATE TABLE `m6rmq_acymailing_template` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `header` longtext,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `category` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_url`
--

CREATE TABLE `m6rmq_acymailing_url` (
  `urlid` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_urlclick`
--

CREATE TABLE `m6rmq_acymailing_urlclick` (
  `urlid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `click` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_acymailing_userstats`
--

CREATE TABLE `m6rmq_acymailing_userstats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `html` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `sent` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `senddate` int(10) UNSIGNED NOT NULL,
  `open` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) UNSIGNED DEFAULT NULL,
  `is_mobile` tinyint(3) UNSIGNED DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `bouncerule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_assets`
--

CREATE TABLE `m6rmq_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_associations`
--

CREATE TABLE `m6rmq_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_banners`
--

CREATE TABLE `m6rmq_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_banner_clients`
--

CREATE TABLE `m6rmq_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_banner_tracks`
--

CREATE TABLE `m6rmq_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_categories`
--

CREATE TABLE `m6rmq_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_company_follow`
--

CREATE TABLE `m6rmq_company_follow` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '1',
  `timecreated` bigint(11) NOT NULL,
  `timeupdated` bigint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_contact_details`
--

CREATE TABLE `m6rmq_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_content`
--

CREATE TABLE `m6rmq_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_contentitem_tag_map`
--

CREATE TABLE `m6rmq_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_content_frontpage`
--

CREATE TABLE `m6rmq_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_content_rating`
--

CREATE TABLE `m6rmq_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_content_types`
--

CREATE TABLE `m6rmq_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_core_log_searches`
--

CREATE TABLE `m6rmq_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_emc_socialnetworks_facebook`
--

CREATE TABLE `m6rmq_emc_socialnetworks_facebook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fb_userid` varchar(20) NOT NULL DEFAULT '0',
  `picture` varchar(256) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_emc_socialnetworks_google`
--

CREATE TABLE `m6rmq_emc_socialnetworks_google` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `google_userid` varchar(40) NOT NULL DEFAULT '0',
  `refresh_token` varchar(256) NOT NULL,
  `picture` varchar(256) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_extensions`
--

CREATE TABLE `m6rmq_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_fields`
--

CREATE TABLE `m6rmq_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_fields_categories`
--

CREATE TABLE `m6rmq_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_fields_groups`
--

CREATE TABLE `m6rmq_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_fields_values`
--

CREATE TABLE `m6rmq_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_filters`
--

CREATE TABLE `m6rmq_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links`
--

CREATE TABLE `m6rmq_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms0`
--

CREATE TABLE `m6rmq_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms1`
--

CREATE TABLE `m6rmq_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms2`
--

CREATE TABLE `m6rmq_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms3`
--

CREATE TABLE `m6rmq_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms4`
--

CREATE TABLE `m6rmq_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms5`
--

CREATE TABLE `m6rmq_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms6`
--

CREATE TABLE `m6rmq_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms7`
--

CREATE TABLE `m6rmq_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms8`
--

CREATE TABLE `m6rmq_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_terms9`
--

CREATE TABLE `m6rmq_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_termsa`
--

CREATE TABLE `m6rmq_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_termsb`
--

CREATE TABLE `m6rmq_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_termsc`
--

CREATE TABLE `m6rmq_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_termsd`
--

CREATE TABLE `m6rmq_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_termse`
--

CREATE TABLE `m6rmq_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_links_termsf`
--

CREATE TABLE `m6rmq_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_taxonomy`
--

CREATE TABLE `m6rmq_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_taxonomy_map`
--

CREATE TABLE `m6rmq_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_terms`
--

CREATE TABLE `m6rmq_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_terms_common`
--

CREATE TABLE `m6rmq_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_tokens`
--

CREATE TABLE `m6rmq_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_tokens_aggregate`
--

CREATE TABLE `m6rmq_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_finder_types`
--

CREATE TABLE `m6rmq_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_jobfair_registration`
--

CREATE TABLE `m6rmq_jobfair_registration` (
  `id` int(11) NOT NULL,
  `companyname` varchar(300) NOT NULL,
  `attendees` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `state` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `openpositions` int(11) NOT NULL,
  `terms_and_conditions` int(10) NOT NULL,
  `timecreated` bigint(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_jobs_jobseeker_connections`
--

CREATE TABLE `m6rmq_js_jobs_jobseeker_connections` (
  `id` int(11) NOT NULL,
  `js_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `timecreated` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_jobs_recentSearch`
--

CREATE TABLE `m6rmq_js_jobs_recentSearch` (
  `id` int(10) NOT NULL,
  `search_title` varchar(255) DEFAULT NULL,
  `search_location` varchar(255) DEFAULT NULL,
  `search_state` varchar(15) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_jobs_recent_search`
--

CREATE TABLE `m6rmq_js_jobs_recent_search` (
  `userid` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_ages`
--

CREATE TABLE `m6rmq_js_job_ages` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_careerlevels`
--

CREATE TABLE `m6rmq_js_job_careerlevels` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_categories`
--

CREATE TABLE `m6rmq_js_job_categories` (
  `id` int(11) NOT NULL,
  `cat_value` varchar(255) DEFAULT NULL,
  `cat_title` varchar(255) DEFAULT NULL,
  `alias` varchar(225) NOT NULL,
  `isactive` smallint(1) DEFAULT '1',
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_channels`
--

CREATE TABLE `m6rmq_js_job_channels` (
  `id` int(11) NOT NULL,
  `channel_name` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `user_groups` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `timecreated` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_cities`
--

CREATE TABLE `m6rmq_js_job_cities` (
  `id` mediumint(6) NOT NULL,
  `cityName` varchar(70) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `stateid` smallint(8) DEFAULT NULL,
  `countryid` smallint(9) DEFAULT NULL,
  `isedit` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_companies`
--

CREATE TABLE `m6rmq_js_job_companies` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(225) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `logofilename` varchar(100) DEFAULT NULL,
  `logoisfile` tinyint(1) DEFAULT '-1',
  `logo` blob,
  `smalllogofilename` varchar(100) DEFAULT NULL,
  `smalllogoisfile` tinyint(1) DEFAULT '-1',
  `smalllogo` tinyblob,
  `aboutcompanyfilename` varchar(100) DEFAULT NULL,
  `aboutcompanyisfile` tinyint(1) DEFAULT '-1',
  `aboutcompanyfilesize` varchar(100) DEFAULT NULL,
  `aboutcompany` mediumblob,
  `contactname` varchar(255) NOT NULL DEFAULT '',
  `contactphone` varchar(255) DEFAULT NULL,
  `companyfax` varchar(250) DEFAULT NULL,
  `contactemail` varchar(255) NOT NULL DEFAULT '',
  `since` datetime DEFAULT NULL,
  `companysize` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `description` text,
  `country` varchar(255) NOT NULL DEFAULT '0',
  `state` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(25) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `metadescription` text,
  `metakeywords` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `packageid` int(11) DEFAULT NULL,
  `paymenthistoryid` int(11) DEFAULT NULL,
  `isgoldcompany` tinyint(1) DEFAULT '0',
  `startgolddate` datetime DEFAULT NULL,
  `endgolddate` date DEFAULT NULL,
  `isfeaturedcompany` tinyint(1) DEFAULT '0',
  `startfeatureddate` datetime DEFAULT NULL,
  `endfeatureddate` date DEFAULT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT '0',
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0',
  `params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_companycities`
--

CREATE TABLE `m6rmq_js_job_companycities` (
  `id` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_config`
--

CREATE TABLE `m6rmq_js_job_config` (
  `configname` varchar(100) NOT NULL DEFAULT '',
  `configvalue` varchar(255) NOT NULL DEFAULT '',
  `configfor` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_countries`
--

CREATE TABLE `m6rmq_js_job_countries` (
  `id` smallint(9) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `shortCountry` varchar(30) DEFAULT NULL,
  `continentID` tinyint(11) DEFAULT NULL,
  `dialCode` smallint(8) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_coverletters`
--

CREATE TABLE `m6rmq_js_job_coverletters` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `hits` int(11) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `searchable` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `paymenthistoryid` int(11) DEFAULT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_currencies`
--

CREATE TABLE `m6rmq_js_job_currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(60) DEFAULT NULL,
  `symbol` varchar(60) DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_departments`
--

CREATE TABLE `m6rmq_js_job_departments` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `description` text,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_emailtemplates`
--

CREATE TABLE `m6rmq_js_job_emailtemplates` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `templatefor` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_emailtemplates_config`
--

CREATE TABLE `m6rmq_js_job_emailtemplates_config` (
  `id` int(11) NOT NULL,
  `emailfor` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `employer` tinyint(1) NOT NULL,
  `jobseeker` tinyint(1) NOT NULL,
  `jobseeker_visitor` tinyint(1) NOT NULL,
  `employer_visitor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_employerpackages`
--

CREATE TABLE `m6rmq_js_job_employerpackages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `currencyid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discounttype` tinyint(4) DEFAULT NULL,
  `discountmessage` varchar(500) DEFAULT NULL,
  `discountstartdate` datetime DEFAULT NULL,
  `discountenddate` datetime DEFAULT NULL,
  `companiesallow` int(11) NOT NULL,
  `jobsallow` int(11) NOT NULL,
  `viewresumeindetails` int(11) NOT NULL,
  `resumesearch` int(11) NOT NULL,
  `saveresumesearch` int(11) NOT NULL,
  `featuredcompaines` int(11) NOT NULL,
  `goldcompanies` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `featuredjobs` int(11) NOT NULL,
  `goldjobs` int(11) NOT NULL,
  `jobseekershortlist` tinyint(4) DEFAULT NULL,
  `shortdetails` varchar(1000) DEFAULT NULL,
  `description` text,
  `status` tinyint(4) NOT NULL,
  `video` tinyint(4) DEFAULT NULL,
  `map` tinyint(4) DEFAULT NULL,
  `packageexpireindays` int(11) NOT NULL,
  `featuredcompaniesexpireindays` int(11) DEFAULT NULL,
  `goldcompaniesexpireindays` int(11) DEFAULT NULL,
  `featuredjobsexpireindays` int(11) DEFAULT NULL,
  `goldjobsexpireindays` int(11) DEFAULT NULL,
  `enforcestoppublishjob` tinyint(1) DEFAULT '0',
  `enforcestoppublishjobvalue` int(11) DEFAULT NULL,
  `enforcestoppublishjobtype` tinyint(4) DEFAULT NULL,
  `fastspringlink` varchar(1000) DEFAULT NULL,
  `otherpaymentlink` varchar(1000) DEFAULT NULL,
  `messageallow` tinyint(1) DEFAULT NULL,
  `folders` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_experiences`
--

CREATE TABLE `m6rmq_js_job_experiences` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_fieldsordering`
--

CREATE TABLE `m6rmq_js_job_fieldsordering` (
  `id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL,
  `fieldtitle` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `fieldfor` tinyint(2) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `isvisitorpublished` tinyint(1) DEFAULT NULL,
  `sys` tinyint(1) NOT NULL,
  `cannotunpublish` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `isuserfield` tinyint(1) NOT NULL,
  `userfieldtype` varchar(250) NOT NULL,
  `userfieldparams` text NOT NULL,
  `search_user` tinyint(1) NOT NULL,
  `search_visitor` tinyint(1) NOT NULL,
  `cannotsearch` tinyint(1) NOT NULL,
  `showonlisting` tinyint(1) NOT NULL,
  `cannotshowonlisting` tinyint(1) NOT NULL,
  `depandant_field` varchar(250) NOT NULL,
  `readonly` tinyint(4) NOT NULL,
  `placeholder` text NOT NULL,
  `size` int(11) NOT NULL,
  `maxlength` int(11) NOT NULL,
  `cols` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `j_script` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_fieldsordering_old`
--

CREATE TABLE `m6rmq_js_job_fieldsordering_old` (
  `id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL,
  `fieldtitle` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `fieldfor` tinyint(2) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `isvisitorpublished` tinyint(1) DEFAULT NULL,
  `sys` tinyint(1) NOT NULL,
  `cannotunpublish` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `isuserfield` tinyint(1) NOT NULL,
  `userfieldtype` varchar(250) NOT NULL,
  `userfieldparams` text NOT NULL,
  `search_user` tinyint(1) NOT NULL,
  `search_visitor` tinyint(1) NOT NULL,
  `cannotsearch` tinyint(1) NOT NULL,
  `showonlisting` tinyint(1) NOT NULL,
  `cannotshowonlisting` tinyint(1) NOT NULL,
  `depandant_field` varchar(250) NOT NULL,
  `readonly` tinyint(4) NOT NULL,
  `size` int(11) NOT NULL,
  `maxlength` int(11) NOT NULL,
  `cols` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `j_script` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_filters`
--

CREATE TABLE `m6rmq_js_job_filters` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `country_istext` tinyint(1) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state_istext` tinyint(1) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `county_istext` tinyint(1) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `city_istext` tinyint(1) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipcode` varchar(25) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `jobtype` int(11) DEFAULT NULL,
  `jobstatus` int(11) DEFAULT NULL,
  `heighesteducation` int(11) DEFAULT NULL,
  `salaryrange` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_folderresumes`
--

CREATE TABLE `m6rmq_js_job_folderresumes` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `folderid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_folders`
--

CREATE TABLE `m6rmq_js_job_folders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `global` tinyint(1) NOT NULL,
  `jobid` int(11) DEFAULT NULL,
  `packageid` int(11) NOT NULL,
  `paymenthistoryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `decription` text,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_goldfeaturedhistory`
--

CREATE TABLE `m6rmq_js_job_goldfeaturedhistory` (
  `id` int(11) NOT NULL,
  `referenceid` int(11) NOT NULL,
  `referencefor` tinyint(1) NOT NULL,
  `referencetype` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_heighesteducation`
--

CREATE TABLE `m6rmq_js_job_heighesteducation` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `isactive` tinyint(1) DEFAULT '1',
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobalertcities`
--

CREATE TABLE `m6rmq_js_job_jobalertcities` (
  `id` int(11) NOT NULL,
  `alertid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobalertsetting`
--

CREATE TABLE `m6rmq_js_job_jobalertsetting` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategoryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contactemail` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(60) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `sendtime` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `alerttype` tinyint(1) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `coordinatesradius` int(11) NOT NULL,
  `lastmailsend` datetime NOT NULL,
  `serverid` int(11) DEFAULT NULL,
  `serverstatus` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobapply`
--

CREATE TABLE `m6rmq_js_job_jobapply` (
  `id` int(11) NOT NULL,
  `jobid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `cvid` int(11) DEFAULT NULL,
  `apply_date` datetime DEFAULT NULL,
  `resumeview` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(1000) DEFAULT NULL,
  `coverletterid` int(11) DEFAULT NULL,
  `action_status` int(11) DEFAULT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobcities`
--

CREATE TABLE `m6rmq_js_job_jobcities` (
  `id` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobs`
--

CREATE TABLE `m6rmq_js_job_jobs` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(225) NOT NULL,
  `jobcategory` varchar(255) NOT NULL DEFAULT '',
  `jobtype` tinyint(1) UNSIGNED DEFAULT '0',
  `jobstatus` tinyint(3) NOT NULL DEFAULT '1',
  `jobsalaryrange` varchar(255) DEFAULT '',
  `salaryrangetype` varchar(20) DEFAULT NULL,
  `hidesalaryrange` tinyint(1) DEFAULT '1',
  `description` text,
  `qualifications` text,
  `prefferdskills` text,
  `prefferdskills2` text,
  `applyinfo` text,
  `company` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `county` varchar(255) DEFAULT '',
  `city` varchar(255) DEFAULT '',
  `zipcode` varchar(25) DEFAULT '',
  `address1` varchar(255) DEFAULT '',
  `address2` varchar(255) DEFAULT '',
  `companyurl` varchar(255) DEFAULT '',
  `contactname` varchar(255) DEFAULT '',
  `contactphone` varchar(255) DEFAULT '',
  `contactemail` varchar(255) DEFAULT '',
  `showcontact` tinyint(1) UNSIGNED DEFAULT '0',
  `noofjobs` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `duration` varchar(255) NOT NULL DEFAULT '',
  `heighestfinisheducation` varchar(255) DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `experience` int(11) DEFAULT '0',
  `startpublishing` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stoppublishing` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `departmentid` varchar(255) DEFAULT NULL,
  `shift` varchar(255) DEFAULT NULL,
  `sendemail` tinyint(1) NOT NULL DEFAULT '0',
  `sendsms` int(11) NOT NULL DEFAULT '1',
  `metadescription` text,
  `metakeywords` text,
  `agreement` text,
  `ordering` tinyint(3) NOT NULL DEFAULT '0',
  `aboutjobfile` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `educationminimax` tinyint(1) DEFAULT NULL,
  `educationid` int(11) DEFAULT NULL,
  `mineducationrange` int(11) DEFAULT NULL,
  `maxeducationrange` int(11) DEFAULT NULL,
  `iseducationminimax` tinyint(1) DEFAULT NULL,
  `degreetitle` varchar(255) DEFAULT NULL,
  `careerlevel` int(11) DEFAULT NULL,
  `experienceminimax` tinyint(1) DEFAULT NULL,
  `experienceid` int(11) DEFAULT NULL,
  `minexperiencerange` int(11) DEFAULT NULL,
  `maxexperiencerange` int(11) DEFAULT NULL,
  `isexperienceminimax` tinyint(1) DEFAULT NULL,
  `experiencetext` varchar(255) DEFAULT NULL,
  `workpermit` varchar(20) DEFAULT NULL,
  `requiredtravel` int(11) DEFAULT NULL,
  `agefrom` int(11) DEFAULT NULL,
  `ageto` int(11) DEFAULT NULL,
  `salaryrangefrom` int(11) DEFAULT NULL,
  `salaryrangeto` int(11) DEFAULT NULL,
  `gender` int(5) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL,
  `map` varchar(1000) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `paymenthistoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `currencyid` int(11) DEFAULT NULL,
  `jobid` varchar(25) DEFAULT '',
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `isgoldjob` tinyint(1) DEFAULT '0',
  `isfeaturedjob` tinyint(1) DEFAULT '0',
  `notifications` tinyint(1) NOT NULL DEFAULT '0',
  `raf_gender` tinyint(1) DEFAULT NULL,
  `raf_degreelevel` tinyint(1) DEFAULT NULL,
  `raf_experience` tinyint(1) DEFAULT NULL,
  `raf_age` tinyint(1) DEFAULT NULL,
  `raf_education` tinyint(1) DEFAULT NULL,
  `raf_category` tinyint(1) DEFAULT NULL,
  `raf_subcategory` tinyint(1) DEFAULT NULL,
  `raf_location` tinyint(1) DEFAULT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0',
  `joblink` varchar(400) NOT NULL,
  `jobapplylink` tinyint(1) NOT NULL,
  `params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobsearches`
--

CREATE TABLE `m6rmq_js_job_jobsearches` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `searchname` varchar(50) NOT NULL,
  `searchparams` longtext NOT NULL,
  `params` longtext NOT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobseekerpackages`
--

CREATE TABLE `m6rmq_js_job_jobseekerpackages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `currencyid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discounttype` tinyint(4) DEFAULT NULL,
  `discountmessage` varchar(500) DEFAULT NULL,
  `discountstartdate` datetime DEFAULT NULL,
  `discountenddate` datetime DEFAULT NULL,
  `resumeallow` int(11) NOT NULL,
  `coverlettersallow` int(11) NOT NULL,
  `applyjobs` int(11) NOT NULL,
  `jobsearch` int(11) NOT NULL,
  `savejobsearch` int(11) NOT NULL,
  `featuredresume` int(11) NOT NULL,
  `goldresume` int(11) NOT NULL,
  `video` tinyint(4) DEFAULT NULL,
  `packageexpireindays` int(11) DEFAULT NULL,
  `shortdetails` varchar(1000) DEFAULT NULL,
  `description` text,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `freaturedresumeexpireindays` int(11) DEFAULT NULL,
  `goldresumeexpireindays` int(11) DEFAULT NULL,
  `fastspringlink` varchar(1000) DEFAULT NULL,
  `otherpaymentlink` varchar(1000) DEFAULT NULL,
  `jobalertsetting` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobshortlist`
--

CREATE TABLE `m6rmq_js_job_jobshortlist` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `comments` text NOT NULL,
  `rate` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sharing` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobssave`
--

CREATE TABLE `m6rmq_js_job_jobssave` (
  `id` bigint(25) NOT NULL,
  `jobid` bigint(25) NOT NULL,
  `uid` bigint(25) NOT NULL,
  `save_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `action_status` int(2) NOT NULL DEFAULT '1',
  `serverstatus` varchar(50) DEFAULT NULL,
  `serverid` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobstatus`
--

CREATE TABLE `m6rmq_js_job_jobstatus` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `isactive` tinyint(1) DEFAULT '1',
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobs_temp`
--

CREATE TABLE `m6rmq_js_job_jobs_temp` (
  `localid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `aliasid` varchar(255) DEFAULT NULL,
  `companyaliasid` varchar(255) DEFAULT NULL,
  `companylogo` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `jobdays` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `jobcategory` varchar(255) DEFAULT NULL,
  `cat_title` varchar(255) DEFAULT NULL,
  `symbol` varchar(60) DEFAULT NULL,
  `salaryfrom` varchar(255) DEFAULT NULL,
  `salaryto` varchar(255) DEFAULT NULL,
  `salaytype` varchar(255) DEFAULT NULL,
  `jobtype` varchar(100) DEFAULT NULL,
  `jobstatus` varchar(100) DEFAULT NULL,
  `cityname` varchar(100) DEFAULT NULL,
  `statename` varchar(100) DEFAULT NULL,
  `countryname` varchar(100) DEFAULT NULL,
  `noofjobs` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobs_temp_time`
--

CREATE TABLE `m6rmq_js_job_jobs_temp_time` (
  `id` int(11) NOT NULL,
  `lastcalltime` datetime DEFAULT NULL,
  `expiretime` datetime DEFAULT NULL,
  `is_request` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_jobtypes`
--

CREATE TABLE `m6rmq_js_job_jobtypes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `isactive` tinyint(1) DEFAULT '1',
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_messages`
--

CREATE TABLE `m6rmq_js_job_messages` (
  `id` int(11) NOT NULL,
  `employerid` int(11) NOT NULL,
  `jobseekerid` int(11) DEFAULT NULL,
  `sendby` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `replytoid` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `isread` tinyint(1) NOT NULL,
  `isconflict` tinyint(1) DEFAULT NULL,
  `conflictvalue` varchar(500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_paymenthistory`
--

CREATE TABLE `m6rmq_js_job_paymenthistory` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `packageid` int(11) NOT NULL,
  `packagetitle` varchar(255) NOT NULL,
  `packageprice` float DEFAULT NULL,
  `discountamount` int(11) DEFAULT NULL,
  `paidamount` int(11) DEFAULT NULL,
  `discountmessage` varchar(500) DEFAULT NULL,
  `packagediscountstartdate` datetime DEFAULT NULL,
  `packagediscountenddate` datetime DEFAULT NULL,
  `packageexpireindays` int(11) NOT NULL,
  `packageshortdetails` varchar(255) DEFAULT NULL,
  `packagedescription` text,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `transactionverified` tinyint(4) DEFAULT NULL,
  `transactionautoverified` tinyint(4) DEFAULT NULL,
  `verifieddate` datetime DEFAULT NULL,
  `referenceid` varchar(150) DEFAULT NULL,
  `payer_firstname` varchar(150) DEFAULT NULL,
  `payer_lastname` varchar(150) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `payer_amount` float DEFAULT NULL,
  `payer_itemname` varchar(255) DEFAULT NULL,
  `payer_itemname2` varchar(255) DEFAULT NULL,
  `payer_status` varchar(255) DEFAULT NULL,
  `payer_tx_token` varchar(255) DEFAULT NULL,
  `packagefor` tinyint(1) DEFAULT NULL,
  `currencyid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_paymentinfo`
--

CREATE TABLE `m6rmq_js_job_paymentinfo` (
  `transaction` varchar(100) NOT NULL,
  `emailaddress` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_paymentmethodconfig`
--

CREATE TABLE `m6rmq_js_job_paymentmethodconfig` (
  `configname` varchar(50) NOT NULL,
  `configvalue` varchar(255) NOT NULL,
  `configfor` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_paymentmethodlinks`
--

CREATE TABLE `m6rmq_js_job_paymentmethodlinks` (
  `id` int(11) NOT NULL,
  `paymentmethodid` int(11) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `packagefor` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_paymentmethods`
--

CREATE TABLE `m6rmq_js_job_paymentmethods` (
  `id` int(11) NOT NULL,
  `paymentaccountid` varchar(255) DEFAULT NULL,
  `currency` text,
  `authentication` varchar(255) DEFAULT NULL,
  `description` text,
  `shopingurl` varchar(255) DEFAULT NULL,
  `seccessfulurl` varchar(255) DEFAULT NULL,
  `cancelurl` varchar(255) DEFAULT NULL,
  `testmode` tinyint(4) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `field10` varchar(255) DEFAULT NULL,
  `paymentmethod` varchar(255) DEFAULT NULL,
  `enable` tinyint(4) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `haslink` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resume`
--

CREATE TABLE `m6rmq_js_job_resume` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `application_title` varchar(150) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `location_state` varchar(50) NOT NULL,
  `address_city` varchar(50) NOT NULL,
  `address_zipcode` varchar(50) NOT NULL,
  `section_skills` varchar(150) NOT NULL,
  `summary` text NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `home_phone` varchar(60) NOT NULL,
  `work_phone` varchar(60) DEFAULT NULL,
  `cell` varchar(60) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `iamavailable` tinyint(1) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '1',
  `photo` varchar(150) DEFAULT NULL,
  `job_category` int(11) DEFAULT NULL,
  `jobsalaryrange` int(11) DEFAULT NULL,
  `jobsalaryrangetype` int(11) DEFAULT NULL,
  `jobtype` int(11) DEFAULT NULL,
  `heighestfinisheducation` varchar(60) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `resume` text,
  `date_start` datetime DEFAULT NULL,
  `desired_salary` int(11) DEFAULT NULL,
  `djobsalaryrangetype` int(11) DEFAULT NULL,
  `dcurrencyid` int(11) DEFAULT NULL,
  `can_work` varchar(250) DEFAULT NULL,
  `available` varchar(250) DEFAULT NULL,
  `unavailable` varchar(250) DEFAULT NULL,
  `experienceid` int(11) DEFAULT NULL,
  `total_experience` varchar(50) DEFAULT NULL,
  `skills` text,
  `driving_license` tinyint(1) DEFAULT NULL,
  `license_no` varchar(100) DEFAULT NULL,
  `license_country` varchar(50) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `paymenthistoryid` int(11) DEFAULT NULL,
  `currencyid` int(11) DEFAULT NULL,
  `job_subcategory` int(11) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `isgoldresume` tinyint(1) DEFAULT NULL,
  `startgolddate` date NOT NULL,
  `endgolddate` date NOT NULL,
  `isfeaturedresume` tinyint(1) DEFAULT NULL,
  `startfeatureddate` date NOT NULL,
  `endfeaturedate` date NOT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT '0',
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `jobsalaryrangestart` int(11) DEFAULT NULL,
  `jobsalaryrangeend` int(11) NOT NULL,
  `desiredsalarystart` int(11) DEFAULT NULL,
  `desiredsalaryend` int(11) NOT NULL,
  `videotype` tinyint(1) NOT NULL,
  `isnotify` int(11) NOT NULL,
  `notify_type` int(11) NOT NULL,
  `params` longtext,
  `current_role` varchar(100) NOT NULL,
  `visatype` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumeaddresses`
--

CREATE TABLE `m6rmq_js_job_resumeaddresses` (
  `id` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `address` text,
  `address_country` varchar(100) DEFAULT NULL,
  `address_state` varchar(60) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_zipcode` varchar(60) DEFAULT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumecertificates`
--

CREATE TABLE `m6rmq_js_job_resumecertificates` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `cer_name` varchar(100) NOT NULL,
  `cer_year` varchar(100) NOT NULL,
  `cer_created` bigint(11) NOT NULL,
  `cer_timeupdated` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumeeducation`
--

CREATE TABLE `m6rmq_js_job_resumeeducation` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `edu_course` varchar(50) NOT NULL,
  `edu_university` varchar(50) DEFAULT NULL,
  `edu_passing_year` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `edu_timecreated` bigint(11) NOT NULL,
  `edu_timeupdated` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumeemployers`
--

CREATE TABLE `m6rmq_js_job_resumeemployers` (
  `id` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `employer` varchar(250) DEFAULT NULL,
  `employer_position` varchar(150) DEFAULT NULL,
  `employer_resp` text,
  `employer_pay_upon_leaving` varchar(250) DEFAULT NULL,
  `employer_supervisor` varchar(100) DEFAULT NULL,
  `employer_from_date` varchar(60) DEFAULT NULL,
  `employer_to_date` varchar(60) DEFAULT NULL,
  `employer_leave_reason` text,
  `employer_country` varchar(100) DEFAULT NULL,
  `employer_state` varchar(100) DEFAULT NULL,
  `employer_city` varchar(100) DEFAULT NULL,
  `employer_zip` varchar(60) DEFAULT NULL,
  `employer_phone` varchar(60) DEFAULT NULL,
  `employer_address` varchar(150) DEFAULT NULL,
  `created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumefiles`
--

CREATE TABLE `m6rmq_js_job_resumefiles` (
  `id` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `filename` varchar(300) DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumeinstitutes`
--

CREATE TABLE `m6rmq_js_job_resumeinstitutes` (
  `id` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `institute` varchar(100) DEFAULT NULL,
  `institute_country` varchar(100) DEFAULT NULL,
  `institute_state` varchar(100) DEFAULT NULL,
  `institute_city` varchar(100) DEFAULT NULL,
  `institute_address` varchar(150) DEFAULT NULL,
  `institute_certificate_name` varchar(100) DEFAULT NULL,
  `institute_study_area` text,
  `created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `fromdate` datetime DEFAULT NULL,
  `todate` datetime DEFAULT NULL,
  `iscontinue` tinyint(4) DEFAULT NULL,
  `params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumelanguages`
--

CREATE TABLE `m6rmq_js_job_resumelanguages` (
  `id` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `language_reading` varchar(20) DEFAULT NULL,
  `language_writing` varchar(20) DEFAULT NULL,
  `language_understanding` varchar(20) DEFAULT NULL,
  `language_where_learned` varchar(250) DEFAULT NULL,
  `created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumeprojects`
--

CREATE TABLE `m6rmq_js_job_resumeprojects` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `resumeid` int(11) DEFAULT NULL,
  `pro_client` varchar(100) DEFAULT NULL,
  `pro_role` varchar(100) DEFAULT NULL,
  `pro_title` varchar(100) DEFAULT NULL,
  `pro_responsibilities` text,
  `pro_description` text,
  `pro_technologies` text,
  `pro_state` varchar(10) DEFAULT NULL,
  `pro_city` varchar(10) DEFAULT NULL,
  `pro_zipcode` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_current_project` tinyint(4) NOT NULL,
  `pro_till_date` varchar(100) NOT NULL,
  `pro_startdate` varchar(100) NOT NULL,
  `pro_enddate` varchar(100) NOT NULL,
  `pro_createdtime` bigint(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumerating`
--

CREATE TABLE `m6rmq_js_job_resumerating` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `votes` float DEFAULT NULL,
  `meonly` tinyint(1) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumereferences`
--

CREATE TABLE `m6rmq_js_job_resumereferences` (
  `id` int(11) NOT NULL,
  `resumeid` int(11) NOT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `reference_name` varchar(50) DEFAULT NULL,
  `reference_country` varchar(50) DEFAULT NULL,
  `reference_state` varchar(50) DEFAULT NULL,
  `reference_city` varchar(50) DEFAULT NULL,
  `reference_zipcode` varchar(25) DEFAULT NULL,
  `reference_address` varchar(150) DEFAULT NULL,
  `reference_phone` varchar(50) DEFAULT NULL,
  `reference_relation` varchar(50) DEFAULT NULL,
  `reference_years` varchar(10) DEFAULT NULL,
  `created` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `serverstatus` varchar(255) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL,
  `params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_resumesearches`
--

CREATE TABLE `m6rmq_js_job_resumesearches` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `searchname` varchar(50) NOT NULL,
  `searchparams` longtext NOT NULL,
  `params` longtext NOT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_roles`
--

CREATE TABLE `m6rmq_js_job_roles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `rolefor` tinyint(4) DEFAULT NULL,
  `companies` int(11) DEFAULT NULL,
  `jobs` int(11) DEFAULT NULL,
  `resumes` int(11) DEFAULT NULL,
  `coverletters` int(11) DEFAULT NULL,
  `searchjob` int(11) DEFAULT NULL,
  `searchresume` int(11) DEFAULT NULL,
  `savesearchresume` int(11) DEFAULT NULL,
  `savesearchjob` int(11) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_salaryrange`
--

CREATE TABLE `m6rmq_js_job_salaryrange` (
  `id` int(11) NOT NULL,
  `rangevalue` varchar(255) DEFAULT NULL,
  `rangestart` varchar(255) DEFAULT NULL,
  `rangeend` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_salaryrangetypes`
--

CREATE TABLE `m6rmq_js_job_salaryrangetypes` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_sharing_service_log`
--

CREATE TABLE `m6rmq_js_job_sharing_service_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `referenceid` int(11) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `eventtype` varchar(255) DEFAULT NULL,
  `message` text,
  `messagetype` varchar(255) DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_shifts`
--

CREATE TABLE `m6rmq_js_job_shifts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `isactive` tinyint(1) DEFAULT '1',
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `serverid` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_skills`
--

CREATE TABLE `m6rmq_js_job_skills` (
  `id` bigint(25) NOT NULL,
  `skills` varchar(250) NOT NULL,
  `enabled` int(2) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_states`
--

CREATE TABLE `m6rmq_js_job_states` (
  `id` smallint(8) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `shortRegion` varchar(25) DEFAULT NULL,
  `countryid` smallint(9) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_subcategories`
--

CREATE TABLE `m6rmq_js_job_subcategories` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `serverid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_userfields`
--

CREATE TABLE `m6rmq_js_job_userfields` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` mediumtext,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `fieldfor` tinyint(2) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `params` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_userfieldvalues`
--

CREATE TABLE `m6rmq_js_job_userfieldvalues` (
  `id` int(11) NOT NULL,
  `field` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldvalue` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_userfield_data`
--

CREATE TABLE `m6rmq_js_job_userfield_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `referenceid` int(11) NOT NULL,
  `subreferenceid` int(11) NOT NULL DEFAULT '0',
  `field` int(10) UNSIGNED DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_userroles`
--

CREATE TABLE `m6rmq_js_job_userroles` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `dated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_workpermit`
--

CREATE TABLE `m6rmq_js_job_workpermit` (
  `id` bigint(25) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `type_code` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isactive` int(2) NOT NULL DEFAULT '1',
  `isdefault` tinyint(1) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `serverid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_js_job_zips`
--

CREATE TABLE `m6rmq_js_job_zips` (
  `id` int(8) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'Y',
  `countrycode` varchar(5) NOT NULL DEFAULT 'US',
  `statecode` varchar(50) DEFAULT NULL,
  `countycode` varchar(50) DEFAULT NULL,
  `citycode` varchar(50) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_attachments`
--

CREATE TABLE `m6rmq_k2_attachments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_categories`
--

CREATE TABLE `m6rmq_k2_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_comments`
--

CREATE TABLE `m6rmq_k2_comments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_extra_fields`
--

CREATE TABLE `m6rmq_k2_extra_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_extra_fields_groups`
--

CREATE TABLE `m6rmq_k2_extra_fields_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_items`
--

CREATE TABLE `m6rmq_k2_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_log`
--

CREATE TABLE `m6rmq_k2_log` (
  `status` int(11) NOT NULL,
  `response` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_rating`
--

CREATE TABLE `m6rmq_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_tags`
--

CREATE TABLE `m6rmq_k2_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_tags_xref`
--

CREATE TABLE `m6rmq_k2_tags_xref` (
  `id` int(11) NOT NULL,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_users`
--

CREATE TABLE `m6rmq_k2_users` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_k2_user_groups`
--

CREATE TABLE `m6rmq_k2_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_languages`
--

CREATE TABLE `m6rmq_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_menu`
--

CREATE TABLE `m6rmq_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_menu_types`
--

CREATE TABLE `m6rmq_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_messages`
--

CREATE TABLE `m6rmq_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_messages_cfg`
--

CREATE TABLE `m6rmq_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_Miniorangesociallogin_apps_save`
--

CREATE TABLE `m6rmq_Miniorangesociallogin_apps_save` (
  `id` int(10) UNSIGNED NOT NULL,
  `fenable` tinyint(1) NOT NULL,
  `tenable` tinyint(1) NOT NULL,
  `genable` tinyint(1) NOT NULL,
  `lenable` tinyint(1) NOT NULL,
  `venable` tinyint(1) NOT NULL,
  `round_enable` varchar(255) DEFAULT NULL,
  `roundedge_enable` varchar(255) DEFAULT NULL,
  `square_enable` varchar(255) DEFAULT NULL,
  `longbutton_enable` varchar(255) DEFAULT NULL,
  `default_enable` varchar(255) DEFAULT NULL,
  `custom_enable` varchar(255) DEFAULT NULL,
  `icon_size` int(11) DEFAULT NULL,
  `icon_width` int(11) DEFAULT NULL,
  `icon_height` int(11) DEFAULT NULL,
  `icon_curve` int(11) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_Miniorangesociallogin_customer_details`
--

CREATE TABLE `m6rmq_Miniorangesociallogin_customer_details` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `customer_key` varchar(255) NOT NULL,
  `customer_token` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `login_status` tinyint(1) NOT NULL,
  `registration_status` varchar(255) NOT NULL,
  `new_registration` tinyint(1) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `email_count` int(11) DEFAULT NULL,
  `sms_count` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_modules`
--

CREATE TABLE `m6rmq_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_modules_menu`
--

CREATE TABLE `m6rmq_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_newsfeeds`
--

CREATE TABLE `m6rmq_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_overrider`
--

CREATE TABLE `m6rmq_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_postinstall_messages`
--

CREATE TABLE `m6rmq_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_privacy_consents`
--

CREATE TABLE `m6rmq_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `state` int(10) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_privacy_requests`
--

CREATE TABLE `m6rmq_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_config`
--

CREATE TABLE `m6rmq_redirectonlogin_config` (
  `id` int(1) NOT NULL,
  `config` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_dynamics`
--

CREATE TABLE `m6rmq_redirectonlogin_dynamics` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_groups`
--

CREATE TABLE `m6rmq_redirectonlogin_groups` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `frontend_type` varchar(200) NOT NULL,
  `frontend_url` varchar(200) NOT NULL,
  `frontend_type_logout` varchar(200) NOT NULL,
  `frontend_url_logout` varchar(200) NOT NULL,
  `backend_type` varchar(200) NOT NULL DEFAULT 'normal',
  `backend_url` varchar(200) NOT NULL,
  `backend_component` varchar(200) NOT NULL,
  `opening_site` varchar(20) NOT NULL,
  `opening_site_url` varchar(200) NOT NULL,
  `opening_site_home` int(1) NOT NULL,
  `menuitem_login` int(11) NOT NULL DEFAULT '0',
  `menuitem_open` int(11) NOT NULL DEFAULT '0',
  `menuitem_logout` int(11) NOT NULL DEFAULT '0',
  `dynamic_login` int(11) NOT NULL DEFAULT '0',
  `dynamic_open` int(11) NOT NULL DEFAULT '0',
  `dynamic_logout` int(11) NOT NULL DEFAULT '0',
  `open_type` varchar(50) NOT NULL,
  `inherit_login` int(11) NOT NULL DEFAULT '0',
  `inherit_open` int(11) NOT NULL DEFAULT '0',
  `inherit_logout` int(11) NOT NULL DEFAULT '0',
  `inherit_backend` int(11) NOT NULL DEFAULT '0',
  `logoutbackend_type` varchar(20) NOT NULL DEFAULT 'normal',
  `logoutbackend_menu` int(11) NOT NULL DEFAULT '0',
  `logoutbackend_url` varchar(200) NOT NULL DEFAULT '../index.php',
  `logoutbackend_dyna` int(11) NOT NULL DEFAULT '0',
  `logoutbackend_inherit` int(11) NOT NULL DEFAULT '0',
  `first_type` varchar(20) NOT NULL DEFAULT 'normal',
  `first_menu` int(11) NOT NULL DEFAULT '0',
  `first_url` varchar(200) NOT NULL DEFAULT 'index.php',
  `first_dyna` int(11) NOT NULL DEFAULT '0',
  `first_inherit` int(11) NOT NULL DEFAULT '0',
  `loginbackend_dynamic` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_levels`
--

CREATE TABLE `m6rmq_redirectonlogin_levels` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `frontend_type` varchar(200) NOT NULL,
  `frontend_url` varchar(200) NOT NULL,
  `frontend_type_logout` varchar(200) NOT NULL,
  `frontend_url_logout` varchar(200) NOT NULL,
  `opening_site` varchar(20) NOT NULL,
  `opening_site_url` varchar(200) NOT NULL,
  `opening_site_home` int(1) NOT NULL,
  `menuitem_login` int(11) NOT NULL DEFAULT '0',
  `menuitem_open` int(11) NOT NULL DEFAULT '0',
  `menuitem_logout` int(11) NOT NULL DEFAULT '0',
  `dynamic_login` int(11) NOT NULL DEFAULT '0',
  `dynamic_open` int(11) NOT NULL DEFAULT '0',
  `dynamic_logout` int(11) NOT NULL DEFAULT '0',
  `open_type` varchar(50) NOT NULL,
  `inherit_login` int(11) NOT NULL DEFAULT '0',
  `inherit_open` int(11) NOT NULL DEFAULT '0',
  `inherit_logout` int(11) NOT NULL DEFAULT '0',
  `first_type` varchar(20) NOT NULL DEFAULT 'normal',
  `first_menu` int(11) NOT NULL DEFAULT '0',
  `first_url` varchar(200) NOT NULL DEFAULT 'index.php',
  `first_dyna` int(11) NOT NULL DEFAULT '0',
  `first_inherit` int(11) NOT NULL DEFAULT '0',
  `logoutbackend_type` varchar(20) NOT NULL DEFAULT 'normal',
  `logoutbackend_menu` int(11) NOT NULL DEFAULT '0',
  `logoutbackend_url` varchar(200) NOT NULL DEFAULT '../index.php',
  `logoutbackend_dyna` int(11) NOT NULL DEFAULT '0',
  `logoutbackend_inherit` int(11) NOT NULL DEFAULT '0',
  `loginbackend_type` varchar(50) NOT NULL DEFAULT 'normal',
  `loginbackend_url` varchar(200) NOT NULL DEFAULT '',
  `loginbackend_component` varchar(200) NOT NULL DEFAULT '',
  `loginbackend_inherit` int(5) NOT NULL DEFAULT '0',
  `loginbackend_dynamic` int(5) NOT NULL DEFAULT '0',
  `logoutbackend_dynamic` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_map`
--

CREATE TABLE `m6rmq_redirectonlogin_map` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `level_title` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_order_groups`
--

CREATE TABLE `m6rmq_redirectonlogin_order_groups` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `redirect_order_front` int(11) NOT NULL,
  `redirect_order_back` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_order_levels`
--

CREATE TABLE `m6rmq_redirectonlogin_order_levels` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `redirect_order` int(11) NOT NULL,
  `order_backend` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_sessions`
--

CREATE TABLE `m6rmq_redirectonlogin_sessions` (
  `id` int(11) NOT NULL,
  `session_id` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `message_type` varchar(100) NOT NULL,
  `unixtime` varchar(14) NOT NULL,
  `opening_site` int(1) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `opening_site_home` int(1) NOT NULL,
  `logout` int(1) NOT NULL,
  `silent` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirectonlogin_users`
--

CREATE TABLE `m6rmq_redirectonlogin_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `frontend_type` varchar(200) NOT NULL,
  `frontend_url` varchar(200) NOT NULL,
  `frontend_type_logout` varchar(200) NOT NULL,
  `frontend_url_logout` varchar(200) NOT NULL,
  `backend_type` varchar(200) NOT NULL,
  `backend_url` varchar(200) NOT NULL,
  `backend_component` varchar(200) NOT NULL,
  `opening_site` varchar(20) NOT NULL,
  `opening_site_url` varchar(200) NOT NULL,
  `opening_site_home` int(1) NOT NULL,
  `menuitem_login` int(11) NOT NULL DEFAULT '0',
  `menuitem_open` int(11) NOT NULL DEFAULT '0',
  `menuitem_logout` int(11) NOT NULL DEFAULT '0',
  `dynamic_login` int(11) NOT NULL DEFAULT '0',
  `dynamic_open` int(11) NOT NULL DEFAULT '0',
  `dynamic_logout` int(11) NOT NULL DEFAULT '0',
  `open_type` varchar(50) NOT NULL,
  `open_front_logout` int(11) NOT NULL,
  `open_back_logout` int(11) NOT NULL,
  `logoutbackend_type` varchar(20) NOT NULL DEFAULT 'none',
  `logoutbackend_menu` int(11) NOT NULL DEFAULT '0',
  `logoutbackend_url` varchar(200) NOT NULL DEFAULT '../index.php',
  `logoutbackend_dyna` int(11) NOT NULL DEFAULT '0',
  `first_type` varchar(20) NOT NULL DEFAULT 'none',
  `first_menu` int(11) NOT NULL DEFAULT '0',
  `first_url` varchar(200) NOT NULL DEFAULT 'index.php',
  `first_dyna` int(11) NOT NULL DEFAULT '0',
  `loginbackend_dynamic` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_redirect_links`
--

CREATE TABLE `m6rmq_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_schemas`
--

CREATE TABLE `m6rmq_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_session`
--

CREATE TABLE `m6rmq_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_socialnetworks_linkedin`
--

CREATE TABLE `m6rmq_socialnetworks_linkedin` (
  `id` bigint(25) NOT NULL,
  `emailAddress` varchar(100) NOT NULL,
  `userid` bigint(25) NOT NULL,
  `linkedin_userid` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `formattedName` varchar(150) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `pictureUrl` text NOT NULL,
  `publicProfileUrl` text NOT NULL,
  `oauth_token` varchar(150) NOT NULL,
  `oauth_verifier` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_spmedia`
--

CREATE TABLE `m6rmq_spmedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `caption` varchar(2048) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `extension` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_sppagebuilder`
--

CREATE TABLE `m6rmq_sppagebuilder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `catid` int(10) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `og_title` varchar(255) NOT NULL,
  `og_image` varchar(255) NOT NULL,
  `og_description` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `hits` bigint(20) NOT NULL DEFAULT '0',
  `css` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_sppagebuilder_integrations`
--

CREATE TABLE `m6rmq_sppagebuilder_integrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL,
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_sppagebuilder_languages`
--

CREATE TABLE `m6rmq_sppagebuilder_languages` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `lang_tag` varchar(255) NOT NULL DEFAULT '',
  `lang_key` varchar(100) DEFAULT NULL,
  `version` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_sppagebuilder_sections`
--

CREATE TABLE `m6rmq_sppagebuilder_sections` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `section` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_tags`
--

CREATE TABLE `m6rmq_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_template_styles`
--

CREATE TABLE `m6rmq_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_ucm_base`
--

CREATE TABLE `m6rmq_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_ucm_content`
--

CREATE TABLE `m6rmq_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_ucm_history`
--

CREATE TABLE `m6rmq_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_updates`
--

CREATE TABLE `m6rmq_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_update_sites`
--

CREATE TABLE `m6rmq_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_update_sites_extensions`
--

CREATE TABLE `m6rmq_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_usergroups`
--

CREATE TABLE `m6rmq_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_users`
--

CREATE TABLE `m6rmq_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `companyid` int(11) DEFAULT NULL,
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_user_additional_info`
--

CREATE TABLE `m6rmq_user_additional_info` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `description` text,
  `mobile` int(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `work_experience` varchar(50) DEFAULT NULL,
  `timecreated` bigint(20) NOT NULL,
  `timeupdated` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_user_keys`
--

CREATE TABLE `m6rmq_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_user_notes`
--

CREATE TABLE `m6rmq_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_user_profiles`
--

CREATE TABLE `m6rmq_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_user_usergroup_map`
--

CREATE TABLE `m6rmq_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_utf8_conversion`
--

CREATE TABLE `m6rmq_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m6rmq_viewlevels`
--

CREATE TABLE `m6rmq_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m6rmq_action_logs`
--
ALTER TABLE `m6rmq_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `m6rmq_action_logs_extensions`
--
ALTER TABLE `m6rmq_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_action_logs_users`
--
ALTER TABLE `m6rmq_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `m6rmq_action_log_config`
--
ALTER TABLE `m6rmq_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_acymailing_action`
--
ALTER TABLE `m6rmq_acymailing_action`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `m6rmq_acymailing_config`
--
ALTER TABLE `m6rmq_acymailing_config`
  ADD PRIMARY KEY (`namekey`);

--
-- Indexes for table `m6rmq_acymailing_fields`
--
ALTER TABLE `m6rmq_acymailing_fields`
  ADD PRIMARY KEY (`fieldid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`published`,`ordering`);

--
-- Indexes for table `m6rmq_acymailing_filter`
--
ALTER TABLE `m6rmq_acymailing_filter`
  ADD PRIMARY KEY (`filid`);

--
-- Indexes for table `m6rmq_acymailing_forward`
--
ALTER TABLE `m6rmq_acymailing_forward`
  ADD PRIMARY KEY (`subid`,`mailid`);

--
-- Indexes for table `m6rmq_acymailing_geolocation`
--
ALTER TABLE `m6rmq_acymailing_geolocation`
  ADD PRIMARY KEY (`geolocation_id`),
  ADD KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`),
  ADD KEY `geolocation_ip_created` (`geolocation_ip`,`geolocation_created`);

--
-- Indexes for table `m6rmq_acymailing_history`
--
ALTER TABLE `m6rmq_acymailing_history`
  ADD PRIMARY KEY (`subid`,`date`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `actionindex` (`action`,`mailid`);

--
-- Indexes for table `m6rmq_acymailing_list`
--
ALTER TABLE `m6rmq_acymailing_list`
  ADD PRIMARY KEY (`listid`),
  ADD KEY `typeorderingindex` (`type`,`ordering`),
  ADD KEY `useridindex` (`userid`),
  ADD KEY `typeuseridindex` (`type`,`userid`);

--
-- Indexes for table `m6rmq_acymailing_listcampaign`
--
ALTER TABLE `m6rmq_acymailing_listcampaign`
  ADD PRIMARY KEY (`campaignid`,`listid`);

--
-- Indexes for table `m6rmq_acymailing_listmail`
--
ALTER TABLE `m6rmq_acymailing_listmail`
  ADD PRIMARY KEY (`listid`,`mailid`);

--
-- Indexes for table `m6rmq_acymailing_listsub`
--
ALTER TABLE `m6rmq_acymailing_listsub`
  ADD PRIMARY KEY (`listid`,`subid`),
  ADD KEY `subidindex` (`subid`),
  ADD KEY `listidstatusindex` (`listid`,`status`);

--
-- Indexes for table `m6rmq_acymailing_mail`
--
ALTER TABLE `m6rmq_acymailing_mail`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddate` (`senddate`),
  ADD KEY `typemailidindex` (`type`,`mailid`),
  ADD KEY `useridindex` (`userid`);

--
-- Indexes for table `m6rmq_acymailing_queue`
--
ALTER TABLE `m6rmq_acymailing_queue`
  ADD PRIMARY KEY (`subid`,`mailid`),
  ADD KEY `listingindex` (`senddate`,`subid`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `orderingindex` (`priority`,`senddate`,`subid`);

--
-- Indexes for table `m6rmq_acymailing_rules`
--
ALTER TABLE `m6rmq_acymailing_rules`
  ADD PRIMARY KEY (`ruleid`),
  ADD KEY `ordering` (`published`,`ordering`);

--
-- Indexes for table `m6rmq_acymailing_stats`
--
ALTER TABLE `m6rmq_acymailing_stats`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddateindex` (`senddate`);

--
-- Indexes for table `m6rmq_acymailing_subscriber`
--
ALTER TABLE `m6rmq_acymailing_subscriber`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userid` (`userid`),
  ADD KEY `queueindex` (`enabled`,`accept`,`confirmed`);

--
-- Indexes for table `m6rmq_acymailing_tag`
--
ALTER TABLE `m6rmq_acymailing_tag`
  ADD PRIMARY KEY (`tagid`),
  ADD KEY `useridindex` (`userid`);

--
-- Indexes for table `m6rmq_acymailing_tagmail`
--
ALTER TABLE `m6rmq_acymailing_tagmail`
  ADD PRIMARY KEY (`tagid`,`mailid`);

--
-- Indexes for table `m6rmq_acymailing_template`
--
ALTER TABLE `m6rmq_acymailing_template`
  ADD PRIMARY KEY (`tempid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`ordering`);

--
-- Indexes for table `m6rmq_acymailing_url`
--
ALTER TABLE `m6rmq_acymailing_url`
  ADD PRIMARY KEY (`urlid`),
  ADD KEY `url` (`url`(250));

--
-- Indexes for table `m6rmq_acymailing_urlclick`
--
ALTER TABLE `m6rmq_acymailing_urlclick`
  ADD PRIMARY KEY (`urlid`,`mailid`,`subid`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `subidindex` (`subid`);

--
-- Indexes for table `m6rmq_acymailing_userstats`
--
ALTER TABLE `m6rmq_acymailing_userstats`
  ADD PRIMARY KEY (`mailid`,`subid`),
  ADD KEY `senddateindex` (`senddate`),
  ADD KEY `subidindex` (`subid`);

--
-- Indexes for table `m6rmq_assets`
--
ALTER TABLE `m6rmq_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `m6rmq_associations`
--
ALTER TABLE `m6rmq_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `m6rmq_banners`
--
ALTER TABLE `m6rmq_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `m6rmq_banner_clients`
--
ALTER TABLE `m6rmq_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `m6rmq_banner_tracks`
--
ALTER TABLE `m6rmq_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `m6rmq_categories`
--
ALTER TABLE `m6rmq_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `m6rmq_company_follow`
--
ALTER TABLE `m6rmq_company_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_contact_details`
--
ALTER TABLE `m6rmq_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `m6rmq_content`
--
ALTER TABLE `m6rmq_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `m6rmq_contentitem_tag_map`
--
ALTER TABLE `m6rmq_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `m6rmq_content_frontpage`
--
ALTER TABLE `m6rmq_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `m6rmq_content_rating`
--
ALTER TABLE `m6rmq_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `m6rmq_content_types`
--
ALTER TABLE `m6rmq_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `m6rmq_emc_socialnetworks_facebook`
--
ALTER TABLE `m6rmq_emc_socialnetworks_facebook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fb_userid` (`fb_userid`),
  ADD UNIQUE KEY `JoomlaUser` (`userid`);

--
-- Indexes for table `m6rmq_emc_socialnetworks_google`
--
ALTER TABLE `m6rmq_emc_socialnetworks_google`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `JoomlaUser` (`userid`),
  ADD UNIQUE KEY `google_userid` (`google_userid`);

--
-- Indexes for table `m6rmq_extensions`
--
ALTER TABLE `m6rmq_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `m6rmq_fields`
--
ALTER TABLE `m6rmq_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `m6rmq_fields_categories`
--
ALTER TABLE `m6rmq_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `m6rmq_fields_groups`
--
ALTER TABLE `m6rmq_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `m6rmq_fields_values`
--
ALTER TABLE `m6rmq_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `m6rmq_finder_filters`
--
ALTER TABLE `m6rmq_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `m6rmq_finder_links`
--
ALTER TABLE `m6rmq_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `m6rmq_finder_links_terms0`
--
ALTER TABLE `m6rmq_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms1`
--
ALTER TABLE `m6rmq_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms2`
--
ALTER TABLE `m6rmq_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms3`
--
ALTER TABLE `m6rmq_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms4`
--
ALTER TABLE `m6rmq_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms5`
--
ALTER TABLE `m6rmq_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms6`
--
ALTER TABLE `m6rmq_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms7`
--
ALTER TABLE `m6rmq_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms8`
--
ALTER TABLE `m6rmq_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_terms9`
--
ALTER TABLE `m6rmq_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_termsa`
--
ALTER TABLE `m6rmq_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_termsb`
--
ALTER TABLE `m6rmq_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_termsc`
--
ALTER TABLE `m6rmq_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_termsd`
--
ALTER TABLE `m6rmq_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_termse`
--
ALTER TABLE `m6rmq_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_links_termsf`
--
ALTER TABLE `m6rmq_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `m6rmq_finder_taxonomy`
--
ALTER TABLE `m6rmq_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `m6rmq_finder_taxonomy_map`
--
ALTER TABLE `m6rmq_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `m6rmq_finder_terms`
--
ALTER TABLE `m6rmq_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `m6rmq_finder_terms_common`
--
ALTER TABLE `m6rmq_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `m6rmq_finder_tokens`
--
ALTER TABLE `m6rmq_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `m6rmq_finder_tokens_aggregate`
--
ALTER TABLE `m6rmq_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `m6rmq_finder_types`
--
ALTER TABLE `m6rmq_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `m6rmq_jobfair_registration`
--
ALTER TABLE `m6rmq_jobfair_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_jobs_jobseeker_connections`
--
ALTER TABLE `m6rmq_js_jobs_jobseeker_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_jobs_recentSearch`
--
ALTER TABLE `m6rmq_js_jobs_recentSearch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_ages`
--
ALTER TABLE `m6rmq_js_job_ages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_careerlevels`
--
ALTER TABLE `m6rmq_js_job_careerlevels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_categories`
--
ALTER TABLE `m6rmq_js_job_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cat_title_key` (`cat_title`);

--
-- Indexes for table `m6rmq_js_job_channels`
--
ALTER TABLE `m6rmq_js_job_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_cities`
--
ALTER TABLE `m6rmq_js_job_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryid` (`countryid`),
  ADD KEY `stateid` (`stateid`);
ALTER TABLE `m6rmq_js_job_cities` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `m6rmq_js_job_companies`
--
ALTER TABLE `m6rmq_js_job_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_uid` (`uid`),
  ADD KEY `companies_category` (`category`),
  ADD KEY `companies_packageid` (`packageid`);

--
-- Indexes for table `m6rmq_js_job_companycities`
--
ALTER TABLE `m6rmq_js_job_companycities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `m6rmq_js_job_config`
--
ALTER TABLE `m6rmq_js_job_config`
  ADD PRIMARY KEY (`configname`);
ALTER TABLE `m6rmq_js_job_config` ADD FULLTEXT KEY `config_name` (`configname`);
ALTER TABLE `m6rmq_js_job_config` ADD FULLTEXT KEY `config_for` (`configfor`);

--
-- Indexes for table `m6rmq_js_job_countries`
--
ALTER TABLE `m6rmq_js_job_countries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `m6rmq_js_job_countries` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `m6rmq_js_job_coverletters`
--
ALTER TABLE `m6rmq_js_job_coverletters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coverletter_uid` (`uid`),
  ADD KEY `coverletter_packgeid` (`packageid`);

--
-- Indexes for table `m6rmq_js_job_currencies`
--
ALTER TABLE `m6rmq_js_job_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_departments`
--
ALTER TABLE `m6rmq_js_job_departments`
  ADD PRIMARY KEY (`id`,`companyid`),
  ADD KEY `departments` (`companyid`),
  ADD KEY `departments_uid` (`uid`);

--
-- Indexes for table `m6rmq_js_job_emailtemplates`
--
ALTER TABLE `m6rmq_js_job_emailtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_emailtemplates_config`
--
ALTER TABLE `m6rmq_js_job_emailtemplates_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_employerpackages`
--
ALTER TABLE `m6rmq_js_job_employerpackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_experiences`
--
ALTER TABLE `m6rmq_js_job_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_fieldsordering`
--
ALTER TABLE `m6rmq_js_job_fieldsordering`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldordering_filedfor` (`fieldfor`);

--
-- Indexes for table `m6rmq_js_job_fieldsordering_old`
--
ALTER TABLE `m6rmq_js_job_fieldsordering_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldordering_filedfor` (`fieldfor`);

--
-- Indexes for table `m6rmq_js_job_filters`
--
ALTER TABLE `m6rmq_js_job_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_folderresumes`
--
ALTER TABLE `m6rmq_js_job_folderresumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_folders`
--
ALTER TABLE `m6rmq_js_job_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_goldfeaturedhistory`
--
ALTER TABLE `m6rmq_js_job_goldfeaturedhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_heighesteducation`
--
ALTER TABLE `m6rmq_js_job_heighesteducation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_jobalertcities`
--
ALTER TABLE `m6rmq_js_job_jobalertcities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alertid` (`alertid`);

--
-- Indexes for table `m6rmq_js_job_jobalertsetting`
--
ALTER TABLE `m6rmq_js_job_jobalertsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_jobapply`
--
ALTER TABLE `m6rmq_js_job_jobapply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobapply_uid` (`uid`),
  ADD KEY `jobapply_jobid` (`jobid`),
  ADD KEY `jobapply_cvid` (`cvid`);

--
-- Indexes for table `m6rmq_js_job_jobcities`
--
ALTER TABLE `m6rmq_js_job_jobcities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobid` (`jobid`),
  ADD KEY `cityid` (`cityid`);

--
-- Indexes for table `m6rmq_js_job_jobs`
--
ALTER TABLE `m6rmq_js_job_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobcategory` (`jobcategory`),
  ADD KEY `jobs_companyid` (`companyid`),
  ADD KEY `jobsalaryrange` (`jobsalaryrange`);

--
-- Indexes for table `m6rmq_js_job_jobsearches`
--
ALTER TABLE `m6rmq_js_job_jobsearches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobsearches_uid` (`uid`);

--
-- Indexes for table `m6rmq_js_job_jobseekerpackages`
--
ALTER TABLE `m6rmq_js_job_jobseekerpackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_jobshortlist`
--
ALTER TABLE `m6rmq_js_job_jobshortlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_jobssave`
--
ALTER TABLE `m6rmq_js_job_jobssave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_jobstatus`
--
ALTER TABLE `m6rmq_js_job_jobstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_jobs_temp`
--
ALTER TABLE `m6rmq_js_job_jobs_temp`
  ADD PRIMARY KEY (`localid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `m6rmq_js_job_jobs_temp_time`
--
ALTER TABLE `m6rmq_js_job_jobs_temp_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_jobtypes`
--
ALTER TABLE `m6rmq_js_job_jobtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_messages`
--
ALTER TABLE `m6rmq_js_job_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_paymenthistory`
--
ALTER TABLE `m6rmq_js_job_paymenthistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_uid` (`uid`),
  ADD KEY `payment_packageid` (`packageid`);

--
-- Indexes for table `m6rmq_js_job_paymentinfo`
--
ALTER TABLE `m6rmq_js_job_paymentinfo`
  ADD PRIMARY KEY (`transaction`);

--
-- Indexes for table `m6rmq_js_job_paymentmethodconfig`
--
ALTER TABLE `m6rmq_js_job_paymentmethodconfig`
  ADD PRIMARY KEY (`configname`);

--
-- Indexes for table `m6rmq_js_job_paymentmethodlinks`
--
ALTER TABLE `m6rmq_js_job_paymentmethodlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_paymentmethods`
--
ALTER TABLE `m6rmq_js_job_paymentmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resume`
--
ALTER TABLE `m6rmq_js_job_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumeaddresses`
--
ALTER TABLE `m6rmq_js_job_resumeaddresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumecertificates`
--
ALTER TABLE `m6rmq_js_job_resumecertificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumeeducation`
--
ALTER TABLE `m6rmq_js_job_resumeeducation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumeemployers`
--
ALTER TABLE `m6rmq_js_job_resumeemployers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumefiles`
--
ALTER TABLE `m6rmq_js_job_resumefiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumeinstitutes`
--
ALTER TABLE `m6rmq_js_job_resumeinstitutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumelanguages`
--
ALTER TABLE `m6rmq_js_job_resumelanguages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumeprojects`
--
ALTER TABLE `m6rmq_js_job_resumeprojects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumerating`
--
ALTER TABLE `m6rmq_js_job_resumerating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumereferences`
--
ALTER TABLE `m6rmq_js_job_resumereferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_resumesearches`
--
ALTER TABLE `m6rmq_js_job_resumesearches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_roles`
--
ALTER TABLE `m6rmq_js_job_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_salaryrange`
--
ALTER TABLE `m6rmq_js_job_salaryrange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_salaryrangetypes`
--
ALTER TABLE `m6rmq_js_job_salaryrangetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_sharing_service_log`
--
ALTER TABLE `m6rmq_js_job_sharing_service_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_shifts`
--
ALTER TABLE `m6rmq_js_job_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_skills`
--
ALTER TABLE `m6rmq_js_job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_states`
--
ALTER TABLE `m6rmq_js_job_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryid` (`countryid`);
ALTER TABLE `m6rmq_js_job_states` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `m6rmq_js_job_subcategories`
--
ALTER TABLE `m6rmq_js_job_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_category_id` (`categoryid`);

--
-- Indexes for table `m6rmq_js_job_userfields`
--
ALTER TABLE `m6rmq_js_job_userfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_userfieldvalues`
--
ALTER TABLE `m6rmq_js_job_userfieldvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_userfield_data`
--
ALTER TABLE `m6rmq_js_job_userfield_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_userroles`
--
ALTER TABLE `m6rmq_js_job_userroles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_workpermit`
--
ALTER TABLE `m6rmq_js_job_workpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_js_job_zips`
--
ALTER TABLE `m6rmq_js_job_zips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `countrystatecountycity` (`countrycode`,`statecode`,`countycode`,`citycode`);

--
-- Indexes for table `m6rmq_k2_attachments`
--
ALTER TABLE `m6rmq_k2_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hits` (`hits`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `m6rmq_k2_categories`
--
ALTER TABLE `m6rmq_k2_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`),
  ADD KEY `category` (`published`,`access`,`trash`),
  ADD KEY `language` (`language`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `parent` (`parent`),
  ADD KEY `published` (`published`),
  ADD KEY `trash` (`trash`);

--
-- Indexes for table `m6rmq_k2_comments`
--
ALTER TABLE `m6rmq_k2_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentDate` (`commentDate`),
  ADD KEY `countComments` (`itemID`,`published`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `latestComments` (`published`,`commentDate`),
  ADD KEY `published` (`published`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `m6rmq_k2_extra_fields`
--
ALTER TABLE `m6rmq_k2_extra_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group` (`group`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `m6rmq_k2_extra_fields_groups`
--
ALTER TABLE `m6rmq_k2_extra_fields_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_k2_items`
--
ALTER TABLE `m6rmq_k2_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`),
  ADD KEY `catid` (`catid`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created` (`created`),
  ADD KEY `featured_ordering` (`featured_ordering`),
  ADD KEY `featured` (`featured`),
  ADD KEY `hits` (`hits`),
  ADD KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  ADD KEY `language` (`language`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`),
  ADD KEY `publish_down` (`publish_down`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `trash` (`trash`);

--
-- Indexes for table `m6rmq_k2_rating`
--
ALTER TABLE `m6rmq_k2_rating`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `rating_sum` (`rating_sum`),
  ADD KEY `rating_count` (`rating_count`);

--
-- Indexes for table `m6rmq_k2_tags`
--
ALTER TABLE `m6rmq_k2_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `m6rmq_k2_tags_xref`
--
ALTER TABLE `m6rmq_k2_tags_xref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagID` (`tagID`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `m6rmq_k2_users`
--
ALTER TABLE `m6rmq_k2_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `group` (`group`);

--
-- Indexes for table `m6rmq_k2_user_groups`
--
ALTER TABLE `m6rmq_k2_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_languages`
--
ALTER TABLE `m6rmq_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `m6rmq_menu`
--
ALTER TABLE `m6rmq_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `m6rmq_menu_types`
--
ALTER TABLE `m6rmq_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `m6rmq_messages`
--
ALTER TABLE `m6rmq_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `m6rmq_messages_cfg`
--
ALTER TABLE `m6rmq_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `m6rmq_Miniorangesociallogin_apps_save`
--
ALTER TABLE `m6rmq_Miniorangesociallogin_apps_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_Miniorangesociallogin_customer_details`
--
ALTER TABLE `m6rmq_Miniorangesociallogin_customer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_modules`
--
ALTER TABLE `m6rmq_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `m6rmq_modules_menu`
--
ALTER TABLE `m6rmq_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `m6rmq_newsfeeds`
--
ALTER TABLE `m6rmq_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `m6rmq_overrider`
--
ALTER TABLE `m6rmq_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_postinstall_messages`
--
ALTER TABLE `m6rmq_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `m6rmq_privacy_consents`
--
ALTER TABLE `m6rmq_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `m6rmq_privacy_requests`
--
ALTER TABLE `m6rmq_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_config`
--
ALTER TABLE `m6rmq_redirectonlogin_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_dynamics`
--
ALTER TABLE `m6rmq_redirectonlogin_dynamics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_groups`
--
ALTER TABLE `m6rmq_redirectonlogin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_levels`
--
ALTER TABLE `m6rmq_redirectonlogin_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_map`
--
ALTER TABLE `m6rmq_redirectonlogin_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_order_groups`
--
ALTER TABLE `m6rmq_redirectonlogin_order_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_order_levels`
--
ALTER TABLE `m6rmq_redirectonlogin_order_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_sessions`
--
ALTER TABLE `m6rmq_redirectonlogin_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirectonlogin_users`
--
ALTER TABLE `m6rmq_redirectonlogin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_redirect_links`
--
ALTER TABLE `m6rmq_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `m6rmq_schemas`
--
ALTER TABLE `m6rmq_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `m6rmq_session`
--
ALTER TABLE `m6rmq_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `m6rmq_socialnetworks_linkedin`
--
ALTER TABLE `m6rmq_socialnetworks_linkedin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_spmedia`
--
ALTER TABLE `m6rmq_spmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_sppagebuilder`
--
ALTER TABLE `m6rmq_sppagebuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_sppagebuilder_integrations`
--
ALTER TABLE `m6rmq_sppagebuilder_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_sppagebuilder_languages`
--
ALTER TABLE `m6rmq_sppagebuilder_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_sppagebuilder_sections`
--
ALTER TABLE `m6rmq_sppagebuilder_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_tags`
--
ALTER TABLE `m6rmq_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `m6rmq_template_styles`
--
ALTER TABLE `m6rmq_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `m6rmq_ucm_base`
--
ALTER TABLE `m6rmq_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `m6rmq_ucm_content`
--
ALTER TABLE `m6rmq_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `m6rmq_ucm_history`
--
ALTER TABLE `m6rmq_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `m6rmq_updates`
--
ALTER TABLE `m6rmq_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `m6rmq_update_sites`
--
ALTER TABLE `m6rmq_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `m6rmq_update_sites_extensions`
--
ALTER TABLE `m6rmq_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `m6rmq_usergroups`
--
ALTER TABLE `m6rmq_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `m6rmq_users`
--
ALTER TABLE `m6rmq_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `m6rmq_user_additional_info`
--
ALTER TABLE `m6rmq_user_additional_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m6rmq_user_keys`
--
ALTER TABLE `m6rmq_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `m6rmq_user_notes`
--
ALTER TABLE `m6rmq_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `m6rmq_user_profiles`
--
ALTER TABLE `m6rmq_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `m6rmq_user_usergroup_map`
--
ALTER TABLE `m6rmq_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `m6rmq_viewlevels`
--
ALTER TABLE `m6rmq_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m6rmq_action_logs`
--
ALTER TABLE `m6rmq_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_action_logs_extensions`
--
ALTER TABLE `m6rmq_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_action_log_config`
--
ALTER TABLE `m6rmq_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_action`
--
ALTER TABLE `m6rmq_acymailing_action`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_fields`
--
ALTER TABLE `m6rmq_acymailing_fields`
  MODIFY `fieldid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_filter`
--
ALTER TABLE `m6rmq_acymailing_filter`
  MODIFY `filid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_geolocation`
--
ALTER TABLE `m6rmq_acymailing_geolocation`
  MODIFY `geolocation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_list`
--
ALTER TABLE `m6rmq_acymailing_list`
  MODIFY `listid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_mail`
--
ALTER TABLE `m6rmq_acymailing_mail`
  MODIFY `mailid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_rules`
--
ALTER TABLE `m6rmq_acymailing_rules`
  MODIFY `ruleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_subscriber`
--
ALTER TABLE `m6rmq_acymailing_subscriber`
  MODIFY `subid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_tag`
--
ALTER TABLE `m6rmq_acymailing_tag`
  MODIFY `tagid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_template`
--
ALTER TABLE `m6rmq_acymailing_template`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_acymailing_url`
--
ALTER TABLE `m6rmq_acymailing_url`
  MODIFY `urlid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_assets`
--
ALTER TABLE `m6rmq_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `m6rmq_banners`
--
ALTER TABLE `m6rmq_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_banner_clients`
--
ALTER TABLE `m6rmq_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_categories`
--
ALTER TABLE `m6rmq_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_company_follow`
--
ALTER TABLE `m6rmq_company_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_contact_details`
--
ALTER TABLE `m6rmq_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_content`
--
ALTER TABLE `m6rmq_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_content_types`
--
ALTER TABLE `m6rmq_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_emc_socialnetworks_facebook`
--
ALTER TABLE `m6rmq_emc_socialnetworks_facebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_emc_socialnetworks_google`
--
ALTER TABLE `m6rmq_emc_socialnetworks_google`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_extensions`
--
ALTER TABLE `m6rmq_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_fields`
--
ALTER TABLE `m6rmq_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_fields_groups`
--
ALTER TABLE `m6rmq_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_finder_filters`
--
ALTER TABLE `m6rmq_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_finder_links`
--
ALTER TABLE `m6rmq_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_finder_taxonomy`
--
ALTER TABLE `m6rmq_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_finder_terms`
--
ALTER TABLE `m6rmq_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_finder_types`
--
ALTER TABLE `m6rmq_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_jobfair_registration`
--
ALTER TABLE `m6rmq_jobfair_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_jobs_jobseeker_connections`
--
ALTER TABLE `m6rmq_js_jobs_jobseeker_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_jobs_recentSearch`
--
ALTER TABLE `m6rmq_js_jobs_recentSearch`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_ages`
--
ALTER TABLE `m6rmq_js_job_ages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_careerlevels`
--
ALTER TABLE `m6rmq_js_job_careerlevels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_categories`
--
ALTER TABLE `m6rmq_js_job_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_channels`
--
ALTER TABLE `m6rmq_js_job_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_cities`
--
ALTER TABLE `m6rmq_js_job_cities`
  MODIFY `id` mediumint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_companies`
--
ALTER TABLE `m6rmq_js_job_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_companycities`
--
ALTER TABLE `m6rmq_js_job_companycities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_countries`
--
ALTER TABLE `m6rmq_js_job_countries`
  MODIFY `id` smallint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_coverletters`
--
ALTER TABLE `m6rmq_js_job_coverletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_currencies`
--
ALTER TABLE `m6rmq_js_job_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_departments`
--
ALTER TABLE `m6rmq_js_job_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_emailtemplates`
--
ALTER TABLE `m6rmq_js_job_emailtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_emailtemplates_config`
--
ALTER TABLE `m6rmq_js_job_emailtemplates_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_employerpackages`
--
ALTER TABLE `m6rmq_js_job_employerpackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_experiences`
--
ALTER TABLE `m6rmq_js_job_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_fieldsordering`
--
ALTER TABLE `m6rmq_js_job_fieldsordering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_fieldsordering_old`
--
ALTER TABLE `m6rmq_js_job_fieldsordering_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_filters`
--
ALTER TABLE `m6rmq_js_job_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_folderresumes`
--
ALTER TABLE `m6rmq_js_job_folderresumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_folders`
--
ALTER TABLE `m6rmq_js_job_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_goldfeaturedhistory`
--
ALTER TABLE `m6rmq_js_job_goldfeaturedhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_heighesteducation`
--
ALTER TABLE `m6rmq_js_job_heighesteducation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobalertcities`
--
ALTER TABLE `m6rmq_js_job_jobalertcities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobalertsetting`
--
ALTER TABLE `m6rmq_js_job_jobalertsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobapply`
--
ALTER TABLE `m6rmq_js_job_jobapply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobcities`
--
ALTER TABLE `m6rmq_js_job_jobcities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobs`
--
ALTER TABLE `m6rmq_js_job_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobsearches`
--
ALTER TABLE `m6rmq_js_job_jobsearches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobseekerpackages`
--
ALTER TABLE `m6rmq_js_job_jobseekerpackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobshortlist`
--
ALTER TABLE `m6rmq_js_job_jobshortlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobssave`
--
ALTER TABLE `m6rmq_js_job_jobssave`
  MODIFY `id` bigint(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobstatus`
--
ALTER TABLE `m6rmq_js_job_jobstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobs_temp`
--
ALTER TABLE `m6rmq_js_job_jobs_temp`
  MODIFY `localid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobs_temp_time`
--
ALTER TABLE `m6rmq_js_job_jobs_temp_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_jobtypes`
--
ALTER TABLE `m6rmq_js_job_jobtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_messages`
--
ALTER TABLE `m6rmq_js_job_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_paymenthistory`
--
ALTER TABLE `m6rmq_js_job_paymenthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_paymentmethodlinks`
--
ALTER TABLE `m6rmq_js_job_paymentmethodlinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_paymentmethods`
--
ALTER TABLE `m6rmq_js_job_paymentmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resume`
--
ALTER TABLE `m6rmq_js_job_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumeaddresses`
--
ALTER TABLE `m6rmq_js_job_resumeaddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumecertificates`
--
ALTER TABLE `m6rmq_js_job_resumecertificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumeeducation`
--
ALTER TABLE `m6rmq_js_job_resumeeducation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumeemployers`
--
ALTER TABLE `m6rmq_js_job_resumeemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumefiles`
--
ALTER TABLE `m6rmq_js_job_resumefiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumeinstitutes`
--
ALTER TABLE `m6rmq_js_job_resumeinstitutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumelanguages`
--
ALTER TABLE `m6rmq_js_job_resumelanguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumeprojects`
--
ALTER TABLE `m6rmq_js_job_resumeprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumerating`
--
ALTER TABLE `m6rmq_js_job_resumerating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumereferences`
--
ALTER TABLE `m6rmq_js_job_resumereferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_resumesearches`
--
ALTER TABLE `m6rmq_js_job_resumesearches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_roles`
--
ALTER TABLE `m6rmq_js_job_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_salaryrange`
--
ALTER TABLE `m6rmq_js_job_salaryrange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_salaryrangetypes`
--
ALTER TABLE `m6rmq_js_job_salaryrangetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_sharing_service_log`
--
ALTER TABLE `m6rmq_js_job_sharing_service_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_shifts`
--
ALTER TABLE `m6rmq_js_job_shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_skills`
--
ALTER TABLE `m6rmq_js_job_skills`
  MODIFY `id` bigint(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_states`
--
ALTER TABLE `m6rmq_js_job_states`
  MODIFY `id` smallint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_subcategories`
--
ALTER TABLE `m6rmq_js_job_subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_userfields`
--
ALTER TABLE `m6rmq_js_job_userfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_userfieldvalues`
--
ALTER TABLE `m6rmq_js_job_userfieldvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_userfield_data`
--
ALTER TABLE `m6rmq_js_job_userfield_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_userroles`
--
ALTER TABLE `m6rmq_js_job_userroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_workpermit`
--
ALTER TABLE `m6rmq_js_job_workpermit`
  MODIFY `id` bigint(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_js_job_zips`
--
ALTER TABLE `m6rmq_js_job_zips`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_attachments`
--
ALTER TABLE `m6rmq_k2_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_categories`
--
ALTER TABLE `m6rmq_k2_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_comments`
--
ALTER TABLE `m6rmq_k2_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_extra_fields`
--
ALTER TABLE `m6rmq_k2_extra_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_extra_fields_groups`
--
ALTER TABLE `m6rmq_k2_extra_fields_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_items`
--
ALTER TABLE `m6rmq_k2_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_tags`
--
ALTER TABLE `m6rmq_k2_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_tags_xref`
--
ALTER TABLE `m6rmq_k2_tags_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_users`
--
ALTER TABLE `m6rmq_k2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_k2_user_groups`
--
ALTER TABLE `m6rmq_k2_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_languages`
--
ALTER TABLE `m6rmq_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_menu`
--
ALTER TABLE `m6rmq_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_menu_types`
--
ALTER TABLE `m6rmq_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_messages`
--
ALTER TABLE `m6rmq_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_modules`
--
ALTER TABLE `m6rmq_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_newsfeeds`
--
ALTER TABLE `m6rmq_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_overrider`
--
ALTER TABLE `m6rmq_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `m6rmq_postinstall_messages`
--
ALTER TABLE `m6rmq_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_privacy_consents`
--
ALTER TABLE `m6rmq_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_privacy_requests`
--
ALTER TABLE `m6rmq_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_config`
--
ALTER TABLE `m6rmq_redirectonlogin_config`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_dynamics`
--
ALTER TABLE `m6rmq_redirectonlogin_dynamics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_groups`
--
ALTER TABLE `m6rmq_redirectonlogin_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_levels`
--
ALTER TABLE `m6rmq_redirectonlogin_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_map`
--
ALTER TABLE `m6rmq_redirectonlogin_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_order_groups`
--
ALTER TABLE `m6rmq_redirectonlogin_order_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_order_levels`
--
ALTER TABLE `m6rmq_redirectonlogin_order_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_sessions`
--
ALTER TABLE `m6rmq_redirectonlogin_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirectonlogin_users`
--
ALTER TABLE `m6rmq_redirectonlogin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_redirect_links`
--
ALTER TABLE `m6rmq_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_socialnetworks_linkedin`
--
ALTER TABLE `m6rmq_socialnetworks_linkedin`
  MODIFY `id` bigint(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_spmedia`
--
ALTER TABLE `m6rmq_spmedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_sppagebuilder`
--
ALTER TABLE `m6rmq_sppagebuilder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_sppagebuilder_integrations`
--
ALTER TABLE `m6rmq_sppagebuilder_integrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_sppagebuilder_languages`
--
ALTER TABLE `m6rmq_sppagebuilder_languages`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_sppagebuilder_sections`
--
ALTER TABLE `m6rmq_sppagebuilder_sections`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_tags`
--
ALTER TABLE `m6rmq_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_template_styles`
--
ALTER TABLE `m6rmq_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_ucm_content`
--
ALTER TABLE `m6rmq_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_ucm_history`
--
ALTER TABLE `m6rmq_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_updates`
--
ALTER TABLE `m6rmq_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_update_sites`
--
ALTER TABLE `m6rmq_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_usergroups`
--
ALTER TABLE `m6rmq_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `m6rmq_users`
--
ALTER TABLE `m6rmq_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_user_additional_info`
--
ALTER TABLE `m6rmq_user_additional_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_user_keys`
--
ALTER TABLE `m6rmq_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_user_notes`
--
ALTER TABLE `m6rmq_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m6rmq_viewlevels`
--
ALTER TABLE `m6rmq_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m6rmq_emc_socialnetworks_facebook`
--
ALTER TABLE `m6rmq_emc_socialnetworks_facebook`
  ADD CONSTRAINT `JoomlaUserFacebook` FOREIGN KEY (`userid`) REFERENCES `m6rmq_users` (`id`);

--
-- Constraints for table `m6rmq_emc_socialnetworks_google`
--
ALTER TABLE `m6rmq_emc_socialnetworks_google`
  ADD CONSTRAINT `JoomlaUserGoogle` FOREIGN KEY (`userid`) REFERENCES `m6rmq_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
