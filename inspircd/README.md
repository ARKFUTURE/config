# config
ARKFUTURE-NET 所有服务的配置文件及脚本

# SQL相关
```
新建OP表
CREATE TABLE IF NOT EXISTS "ircd_opers" (
  "active" bool NOT NULL DEFAULT true,
  "name" text NOT NULL,
  "password" text NOT NULL,
  "host" text NOT NULL,
  "type" text NOT NULL,
  "autologin" CHECK ("autologin" IN ('strict', 'relaxed', 'never')),
  "class" text,
  "hash" text,
  "maxchans" bigint,
  "nopassword" bool,
  "vhost" text,
  "commands" text,
  "privs" text,
  "chanmodes" text,
  "usermodes" text,
  "snomasks" text,
  "account" text,
  "autojoin" text,
  "automotd" bool,
  "fingerprint" text,
  "level" bigint,
  "modes" text,
  "motd" bool,
  "override" text,
  "sslonly" bool,
  "swhois" text
);

新建user表
CREATE TABLE IF NOT EXISTS users (
    "name" text NOT NULL,
    "password" text NOT NULL,
    "host" text NOT NULL
);

OP 查询
SELECT name, host, type, password, 'hmac-sha512' as hash FROM oper WHERE active=1 AND type IS NOT NULL

User查询
SELECT * FROM users WHERE name='$nick' LIMIT 1
```
