DROP TABLE `prefix_vars`;
CREATE TABLE `prefix_vars` (
  `elementID` smallint(5) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `class` int(11) NOT NULL,
  `factor` float(4,2) NOT NULL DEFAULT '1.00',
  `maxLevel` int(11) DEFAULT NULL,
  `cost901` int(10) unsigned NOT NULL DEFAULT '0',
  `cost902` int(10) unsigned NOT NULL DEFAULT '0',
  `cost903` int(10) unsigned NOT NULL DEFAULT '0',
  `cost911` int(10) unsigned NOT NULL DEFAULT '0',
  `cost921` int(10) unsigned NOT NULL DEFAULT '0',
  `consumption1` int(10) unsigned DEFAULT NULL,
  `consumption2` int(10) unsigned DEFAULT NULL,
  `speedTech` int(10) unsigned DEFAULT NULL,
  `speed1` int(10) unsigned DEFAULT NULL,
  `speed2` int(10) unsigned DEFAULT NULL,
  `capacity` int(10) unsigned DEFAULT NULL,
  `attack` int(10) unsigned DEFAULT NULL,
  `defend` int(10) unsigned DEFAULT NULL,
  `timeBonus` int(10) unsigned DEFAULT NULL,
  `bonusAttack` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusDefensive` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusShield` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusBuildTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusResearchTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusShipTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusDefensiveTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusResource` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusEnergy` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusResourceStorage` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusShipStorage` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusFlyTime` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusFleetSlots` float(4,2) NOT NULL DEFAULT '0.00',
  `bonusPlanets` float(4,2) NOT NULL DEFAULT '0.00',
  `production901` varchar(255) DEFAULT NULL,
  `production902` varchar(255) DEFAULT NULL,
  `production903` varchar(255) DEFAULT NULL,
  `production911` varchar(255) DEFAULT NULL,
  `production921` varchar(255) DEFAULT NULL,
  `storage901` varchar(255) DEFAULT NULL,
  `storage902` varchar(255) DEFAULT NULL,
  `storage903` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`elementID`),
  KEY `class` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `prefix_vars` (`elementID`, `name`, `class`, `factor`, `maxLevel`, `cost901`, `cost902`, `cost903`, `cost911`, `cost921`, `consumption1`, `consumption2`, `speedTech`, `speed1`, `speed2`, `capacity`, `attack`, `defend`, `timeBonus`, `bonusAttack`, `bonusDefensive`, `bonusShield`, `bonusBuildTime`, `bonusResearchTime`, `bonusShipTime`, `bonusDefensiveTime`, `bonusResource`, `bonusEnergy`, `bonusResourceStorage`, `bonusShipStorage`, `bonusFlyTime`, `bonusFleetSlots`, `bonusPlanets`, `production901`, `production902`, `production903`, `production911`, `production921`, `storage901`, `storage902`, `storage903`) VALUES
(1, 'metal_mine', 1114113, 1.50, 255, 60, 15, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '(30 * $BuildLevel * pow((1.1), $BuildLevel))', NULL, NULL, '-(10 * $BuildLevel * pow((1.1), $BuildLevel))', NULL, NULL, NULL, NULL),
(2, 'crystal_mine', 1114113, 1.50, 255, 48, 24, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '(20 * $BuildLevel * pow((1.1), $BuildLevel))', NULL, '-(10 * $BuildLevel * pow((1.1), $BuildLevel))', NULL, NULL, NULL, NULL),
(3, 'deuterium_sintetizer', 1114113, 1.50, 255, 225, 75, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '(10 * $BuildLevel * pow((1.1), $BuildLevel) * (-0.002 * $BuildTemp + 1.28))', '- (30 * $BuildLevel * pow((1.1), $BuildLevel))', NULL, NULL, NULL, NULL),
(4, 'solar_plant', 1114113, 1.50, 255, 75, 30, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, '(20 * $BuildLevel * pow((1.1), $BuildLevel))', NULL, NULL, NULL, NULL),
(6, 'university', 1048577, 2.00, 255, 100000000, 50000000, 25000000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'fusion_plant', 1114113, 2.00, 255, 900, 360, 180, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, '- (10 * $BuildLevel * pow(1.1, $BuildLevel))', '(30 * $BuildLevel * pow((1.05 + $BuildEnergy * 0.01), $BuildLevel))', NULL, NULL, NULL, NULL),
(14, 'robot_factory', 3145729, 2.00, 255, 400, 120, 200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'nano_factory', 1048577, 2.00, 255, 1000000, 500000, 100000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'hangar', 3145729, 2.00, 255, 400, 200, 100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'metal_store', 3276801, 2.00, 255, 2000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, 'floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000', NULL, NULL),
(23, 'crystal_store', 3276801, 2.00, 255, 2000, 1000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 'floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000', NULL),
(24, 'deuterium_store', 3276801, 2.00, 255, 2000, 2000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'floor(2.5 * pow(1.8331954764, $BuildLevel)) * 5000'),
(31, 'laboratory', 1048577, 2.00, 255, 200, 400, 200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'terraformer', 1048577, 2.00, 255, 0, 50000, 100000, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'ally_deposit', 1048577, 2.00, 255, 20000, 40000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'mondbasis', 2097153, 2.00, 255, 20000, 40000, 20000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'phalanx', 2097153, 2.00, 255, 20000, 40000, 20000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'sprungtor', 2097153, 2.00, 255, 2000000, 4000000, 2000000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'silo', 1048577, 2.00, 255, 20000, 20000, 1000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'spy_tech', 2, 2.00, 255, 200, 1000, 200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'computer_tech', 2, 2.00, 255, 0, 400, 600, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'military_tech', 2, 2.00, 255, 800, 200, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'defence_tech', 2, 2.00, 255, 200, 600, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'shield_tech', 2, 2.00, 255, 1000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'energy_tech', 2, 2.00, 255, 0, 800, 400, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'hyperspace_tech', 2, 2.00, 255, 0, 4000, 2000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'combustion_tech', 2, 2.00, 255, 400, 0, 600, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'impulse_motor_tech', 2, 2.00, 255, 2000, 4000, 600, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'hyperspace_motor_tech', 2, 2.00, 255, 10000, 20000, 6000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'laser_tech', 2, 2.00, 255, 200, 100, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'ionic_tech', 2, 2.00, 255, 1000, 300, 100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'buster_tech', 2, 2.00, 255, 2000, 4000, 1000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'intergalactic_tech', 2, 2.00, 255, 240000, 400000, 160000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'expedition_tech', 2, 1.75, 255, 4000, 8000, 4000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'metal_proc_tech', 2, 2.00, 255, 750, 500, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'crystal_proc_tech', 2, 2.00, 255, 1000, 750, 500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'deuterium_proc_tech', 2, 2.00, 255, 1250, 1000, 750, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'graviton_tech', 2, 3.00, 255, 0, 0, 0, 300000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'small_ship_cargo', 3145732, 1.00, NULL, 2000, 2000, 0, 0, 0, 10, 20, 4, 5000, 10000, 5000, 5, 10, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'big_ship_cargo', 3145732, 1.00, NULL, 6000, 6000, 0, 0, 0, 50, 50, 1, 7500, 7500, 25000, 5, 25, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'light_hunter', 3145732, 1.00, NULL, 3000, 1000, 0, 0, 0, 20, 20, 1, 12500, 12500, 50, 50, 10, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'heavy_hunter', 3145732, 1.00, NULL, 6000, 4000, 0, 0, 0, 75, 75, 2, 10000, 15000, 100, 150, 25, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'crusher', 3145732, 1.00, NULL, 20000, 7000, 2000, 0, 0, 300, 300, 2, 15000, 15000, 800, 400, 50, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'battle_ship', 3145732, 1.00, NULL, 45000, 15000, 0, 0, 0, 250, 250, 3, 10000, 10000, 1500, 1000, 200, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'colonizer', 3145732, 1.00, NULL, 10000, 20000, 10000, 0, 0, 1000, 1000, 2, 2500, 2500, 7500, 50, 100, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'recycler', 3145732, 1.00, NULL, 10000, 6000, 2000, 0, 0, 300, 300, 1, 2000, 2000, 20000, 1, 10, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'spy_sonde', 3145732, 1.00, NULL, 0, 1000, 0, 0, 0, 1, 1, 1, 100000000, 100000000, 5, 0, 0, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'bomber_ship', 3145732, 1.00, NULL, 50000, 25000, 15000, 0, 0, 1000, 1000, 5, 4000, 5000, 500, 1000, 500, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'solar_satelit', 3211268, 1.00, NULL, 0, 2000, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, '((($BuildTemp + 160) / 6) * $BuildLevel)', NULL, NULL, NULL, NULL),
(213, 'destructor', 3145732, 1.00, NULL, 60000, 50000, 15000, 0, 0, 1000, 1000, 3, 5000, 5000, 2000, 2000, 500, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'dearth_star', 3145732, 1.00, NULL, 5000000, 4000000, 1000000, 0, 0, 1, 1, 3, 200, 200, 1000000, 200000, 50000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'battleship', 3145732, 1.00, NULL, 30000, 40000, 15000, 0, 0, 250, 250, 3, 10000, 10000, 750, 700, 400, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'lune_noir', 3145732, 1.00, NULL, 8000000, 2000000, 1500000, 0, 0, 250, 250, 3, 900, 900, 15000000, 150000, 70000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'ev_transporter', 3145732, 1.00, NULL, 35000, 20000, 1500, 0, 0, 90, 90, 3, 6000, 6000, 400000000, 50, 120, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'star_crasher', 3145732, 1.00, NULL, 275000000, 130000000, 60000000, 0, 0, 10000, 10000, 3, 10, 10, 50000000, 35000000, 2000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'giga_recykler', 3145732, 1.00, NULL, 1000000, 600000, 200000, 0, 0, 300, 300, 3, 7500, 7500, 200000000, 1, 1000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'dm_ship', 3145732, 1.00, NULL, 6000000, 7000000, 3000000, 0, 0, 100000, 100000, 3, 100, 100, 6000000, 5, 50000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'misil_launcher', 3145736, 1.00, NULL, 2000, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 80, 20, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'small_laser', 3145736, 1.00, NULL, 1500, 500, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 100, 25, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'big_laser', 3145736, 1.00, NULL, 6000, 2000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 250, 100, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'gauss_canyon', 3145736, 1.00, NULL, 20000, 15000, 2000, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1100, 200, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'ionic_canyon', 3145736, 1.00, NULL, 2000, 6000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 150, 500, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'buster_canyon', 3145736, 1.00, NULL, 50000, 50000, 30000, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 3000, 300, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'small_protection_shield', 3407880, 1.00, NULL, 10000, 10000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 2000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'big_protection_shield', 3407880, 1.00, NULL, 50000, 50000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 10000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'planet_protector', 3407880, 1.00, NULL, 10000000, 5000000, 2500000, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'graviton_canyon', 3145736, 1.00, NULL, 15000000, 15000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 500000, 80000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'orbital_station', 3407880, 1.00, NULL, 4294967295, 2000000000, 500000000, 1000000, 10000, NULL, NULL, NULL, NULL, NULL, 0, 400000000, 2000000000, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'interceptor_misil', 3145736, 1.00, NULL, 8000, 0, 2000, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'interplanetary_misil', 3145736, 1.00, NULL, 12500, 2500, 10000, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 12000, 1, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'rpg_geologue', 16, 1.00, 20, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'rpg_amiral', 16, 1.00, 20, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 0.05, 0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'rpg_ingenieur', 16, 1.00, 10, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.05, 0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.05, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'rpg_technocrate', 16, 1.00, 10, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, -0.05, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'rpg_constructeur', 16, 1.00, 3, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'rpg_scientifique', 16, 1.00, 3, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'rpg_stockeur', 16, 1.00, 2, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.50, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'rpg_defenseur', 16, 1.00, 2, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -0.25, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'rpg_bunker', 16, 1.00, 1, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'rpg_espion', 16, 1.00, 2, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'rpg_commandant', 16, 1.00, 3, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'rpg_destructeur', 16, 1.00, 1, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'rpg_general', 16, 1.00, 3, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.10, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'rpg_raideur', 16, 1.00, 1, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'rpg_empereur', 16, 1.00, 1, 0, 0, 0, 0, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'dm_attack', 32, 1.00, NULL, 0, 0, 0, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.10, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'dm_defensive', 32, 1.00, NULL, 0, 0, 0, 0, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'dm_buildtime', 32, 1.00, NULL, 0, 0, 0, 0, 750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'dm_resource', 32, 1.00, NULL, 0, 0, 0, 0, 2500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'dm_energie', 32, 1.00, NULL, 0, 0, 0, 0, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'dm_researchtime', 32, 1.00, NULL, 0, 0, 0, 0, 1250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.10, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 'dm_fleettime', 32, 1.00, NULL, 0, 0, 0, 0, 3000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86400, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -0.10, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(901, 'metal', 128, 1.00, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(902, 'crystal', 128, 1.00, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(903, 'deuterium', 128, 1.00, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(911, 'energy', 512, 1.00, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(921, 'darkmatter', 256, 1.00, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


ALTER TABLE `prefix_planets` CHANGE `metal_mine_porcent` `metal_mine_percent` TINYINT( 1 ) NOT NULL DEFAULT '100',
CHANGE `crystal_mine_porcent` `crystal_mine_percent` TINYINT( 1 ) NOT NULL DEFAULT '100',
CHANGE `deuterium_sintetizer_porcent` `deuterium_sintetizer_percent` TINYINT( 1 ) NOT NULL DEFAULT '100',
CHANGE `solar_plant_porcent` `solar_plant_percent` TINYINT( 1 ) NOT NULL DEFAULT '100',
CHANGE `fusion_plant_porcent` `fusion_plant_percent` TINYINT( 1 ) NOT NULL DEFAULT '100',
CHANGE `solar_satelit_porcent` `solar_satelit_percent` TINYINT( 1 ) NOT NULL DEFAULT '100'