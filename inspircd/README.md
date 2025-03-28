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
  "commands" text,
  "chanmodes" text,
  "usermodes" text,
  "snomasks" text
);

新建user表
CREATE TABLE IF NOT EXISTS user (
    "name" text NOT NULL,
    "password" text
);
```
