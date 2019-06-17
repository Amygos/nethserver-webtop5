-- ---------------------------------------------------
-- Set Mail grid view to columns, if setting not exist
-- ---------------------------------------------------
INSERT INTO "core"."settings" (service_id, key, value) SELECT 'com.sonicle.webtop.mail', 'default.viewmode', 'columns' WHERE NOT EXISTS (SELECT value from "core"."settings" WHERE key = 'default.viewmode' and service_id = 'com.sonicle.webtop.mail');

-- ---------------------------------------------------
-- Enable mail in grid preview, if setting not exist
-- ---------------------------------------------------
INSERT INTO "core"."settings" (service_id, key, value) SELECT 'com.sonicle.webtop.mail', 'default.ingrid.preview', 'true' WHERE NOT EXISTS (SELECT value from "core"."settings" WHERE key = 'default.ingrid.preview' and service_id = 'com.sonicle.webtop.mail');
