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
  "hash" text,
  "vhost" text,
  "commands" text,
  "chanmodes" text,
  "usermodes" text,
  "snomasks" text,
);

新建user表
CREATE TABLE IF NOT EXISTS users (
    "active" bool NOT NULL DEFAULT true,
    "name" text NOT NULL,
    "user" text NOT NULL,
    "password" text NOT NULL
);

OP 查询
SELECT name,password,hash,host,type FROM oper WHERE active=1 AND type IS NOT NULL LIMIT 1

User查询
SELECT * FROM users WHERE name='$nick' LIMIT 1
```
