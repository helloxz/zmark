# API 认证

## 概述

所有 API v1 接口都需要 Bearer Token 认证。Token 是与用户账户关联的长期有效 API 密钥。

## Token 格式

- **前缀**：`sk-`
- **长度**：共 40 个字符
- **格式**：`sk-` + 37 位字母数字（`[A-Za-z0-9]`）
- **示例**：`sk-abc123DEF456ghi789JKL012mno345PQR`

## 请求头

在 `Authorization` 请求头中携带 Token：

```
Authorization: Bearer sk-<your-api-token>
```

## 获取Token

用户在书签页面：`/user/home` - 右上角头像 - API Token进行获取。

![CleanShot 2026-06-11 at 17.12.24@2x.png](https://img.rss.ink/2026/06/11/ozOQj7OK.png)