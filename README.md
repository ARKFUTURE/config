# config
ARKFUTURE-NET 所有服务的配置文件及脚本

# SQL相关
```
新建OP表
CREATE TABLE IF NOT EXISTS "oper" (
  "active" bool NOT NULL DEFAULT true,
  "name" text NOT NULL,
  "password" text NOT NULL,
  "host" text NOT NULL,
  "type" text NOT NULL,
  "hash" text,
  "vhost" text,
  "swhois" text
);

新建user表
CREATE TABLE IF NOT EXISTS users (
    "name" text NOT NULL,
    "password" text NOT NULL,
    "host" text NOT NULL
);

OP 查询
SELECT name,'*' as host,type,password,'pbkdf2-hmac-sha512' as hash FROM oper WHERE oper_class IS NOT NULLs

User查询
SELECT * FROM users WHERE name='$nick' LIMIT 1
```
