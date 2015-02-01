# Users schema

# --- !Ups

CREATE TABLE issue (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `project_id` BIGINT(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `owner_id` BIGINT(11) DEFAULT NULL,
  `requester_id` BIGINT(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` BIGINT(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` BIGINT(11) DEFAULT NULL,
  `escalate_time` datetime DEFAULT NULL,
  `severity` tinyint(4) DEFAULT '1',
  `deadline` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `xml_data` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
);

INSERT INTO `issue` (`id`, `name`, `description`, `project_id`, `type`, `status`, `owner_id`, `requester_id`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `escalate_time`, `severity`, `deadline`, `close_date`, `xml_data`) VALUES
  (1, 'Nhiều hạng mục trước A.1211 bị đình trệ do máy móc hỗ trợ chậm', '[Phát sinh từ việc A.1211] Máy móc support chậm làm ảnh hưởng đến những\r\n				task tiếp theo. Sau một thời gian OS mới support deploy những task trước đó.', 1, 0, 1, 1, 3, '2014-05-22 18:54:15', NULL, NULL, NULL, '2014-07-15 19:05:45', 1, NULL, NULL, NULL),
  (2, 'Máy xúc lật hỗ trợ chậm không thi công được hạng mục T.580', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 0, 1, 1, 2, '2014-05-22 19:02:32', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (3, 'Nhiều hạng mục trước A.1211 bị đình trệ do máy móc hỗ trợ chậm', '[Phát sinh từ việc A.1211] Máy móc support chậm làm ảnh hưởng đến những\r\n				task tiếp theo. Sau một thời gian OS mới support deploy những task trước đó.', 1, 0, 1, 1, 2, '2014-05-22 18:54:15', NULL, NULL, NULL, '2014-07-15 19:05:45', 1, NULL, NULL, NULL),
  (4, 'Máy xúc lật hỗ trợ chậm không thi công được hạng mục T.580', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 0, 1, 1, 6, '2014-05-22 19:02:32', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (5, 'Xi măng phục vụ công trường Nam Thành Công bị thiếu (khoảng 12 tấn)', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 2, 1, 1, 11, '2014-05-22 19:04:37', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (6, 'Không thi công được hàng rào A.121 vì gặp đường điện ngầm', 'Sửa phần mái SVD Mỹ Đình', 1, 2, 3, 1, 3, '2014-05-22 19:05:45', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (7, 'Nhiều hạng mục trước A.1211 bị đình trệ do máy móc hỗ trợ chậm', '[Phát sinh từ việc A.1211] Máy móc support chậm làm ảnh hưởng đến những\r\n				task tiếp theo. Sau một thời gian OS mới support deploy những task trước đó.', 1, 0, 1, 41, 4, '2014-05-22 18:54:15', NULL, NULL, NULL, '2014-07-15 19:05:45', 1, NULL, NULL, NULL),
  (8, 'Máy xúc lật hỗ trợ chậm không thi công được hạng mục T.580', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 0, 2, 41, 7, '2014-05-22 19:02:32', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (9, 'Xi măng phục vụ công trường Nam Thành Công bị thiếu (khoảng 12 tấn)', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 2, 1, 41, 8, '2014-05-22 19:04:37', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (10, 'Không thi công được hàng rào A.121 vì gặp đường điện ngầm', 'Sửa phần mái SVD Mỹ Đình', 1, 2, 1, 41, 5, '2014-05-22 19:05:45', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (17, 'Xi măng phục vụ công trường Nam Thành Công bị thiếu (khoảng 12 tấn)', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 2, 1, 1, 2, '2014-05-22 19:04:37', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (18, 'Không thi công được hàng rào A.121 vì gặp đường điện ngầm', 'Sửa phần mái SVD Mỹ Đình', 1, 2, 2, 1, 6, '2014-05-22 19:05:45', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (19, 'Nhiều hạng mục trước A.1211 bị đình trệ do máy móc hỗ trợ chậm', '[Phát sinh từ việc A.1211] Máy móc support chậm làm ảnh hưởng đến những\r\n				task tiếp theo. Sau một thời gian OS mới support deploy những task trước đó.', 1, 0, 1, 41, 5, '2014-05-22 18:54:15', NULL, NULL, NULL, '2014-07-15 19:05:45', 1, NULL, NULL, NULL),
  (20, 'Máy xúc lật hỗ trợ chậm không thi công được hạng mục T.580', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 0, 1, 41, 4, '2014-05-22 19:02:32', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (21, 'Xi măng phục vụ công trường Nam Thành Công bị thiếu (khoảng 12 tấn)', '[Phát sinh từ việc A.1219] The CurrencyFormatter class provides basic formatting \r\n					options for numeric data, including decimal formatting, thousands separator formatting, \r\n					and negative sign formatting. The format() method accepts a Number value or a number \r\n					formatted as a String value and formats the resulting string.Máy móc support chậm làm \r\n				ảnh hưởng đến những task tiếp theo.', 1, 2, 1, 41, 5, '2014-05-22 19:04:37', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
  (22, 'Không thi công được hàng rào A.121 vì gặp đường điện ngầm', 'Sửa phần mái SVD Mỹ Đình', 1, 2, 4, 41, 5, '2014-05-22 19:05:45', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

# --- !Downs

DROP TABLE Issue;