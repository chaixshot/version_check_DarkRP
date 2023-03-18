CREATE TABLE `คนงาน` (
  `รหัสคนงาน` int(11) NOT NULL DEFAULT 0,
  `ชื่อคนงาน` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `อัตราค่าแรงต่อชม` int(11) DEFAULT NULL,
  `ประเภทความชำนาน` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `รหัสผู้ควบคุม` int(11) DEFAULT NULL,
  PRIMARY KEY (`รหัสคนงาน`),
  KEY `FK_คนงาน_ความชำนาน` (`ประเภทความชำนาน`) USING BTREE,
  CONSTRAINT `FK_คนงาน_ความชำนาน` FOREIGN KEY (`ประเภทความชำนาน`) REFERENCES `ความชำนาน` (`ประเภทความชำนาน`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `ความชำนาน` (
  `ประเภทความชำนาน` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `อัตราโบนัส` int(11) DEFAULT NULL,
  `จำนวนชั่วโมงขั้นต่ำ` int(11) DEFAULT NULL,
  KEY `ประเภทความชำนาน` (`ประเภทความชำนาน`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
