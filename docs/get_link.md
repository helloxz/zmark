# 获取链接详情

```
GET /api/v1/get_link
```

## 描述

获取指定链接的详细信息。

## 请求参数

| 参数 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `id` | number | 是 | 链接 ID |

## 响应

返回链接的完整信息。

## curl 示例

```bash
curl -X GET "https://your-domain.com/api/v1/get_link?id=42" \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR"
```

## 响应示例

```json
{
  "code": 200,
  "msg": "success",
  "data": {
    "id": 42,
    "uid": 1,
    "title": "GitHub",
    "url": "https://github.com",
    "backup_url": "",
    "content": "",
    "keywords": "",
    "description": "全球最大代码托管平台",
    "icon": "",
    "category_type": "l1",
    "category_id": 1,
    "sort_order": 0,
    "is_public": 0,
    "http_code": 200,
    "created_at": "2026-06-11T12:00:00.000Z",
    "updated_at": "2026-06-11T12:00:00.000Z"
  }
}
```
