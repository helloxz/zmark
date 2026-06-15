# 移除重复链接

```
POST /api/v1/remove_duplicate_links
```

## 描述

移除当前用户的重复链接。按 URL 精确匹配，保留最早添加的那条记录。

## 请求参数

无

## 响应

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| `deleted_count` | number | 删除的重复链接数量 |
| `deleted_ids` | number[] | 已删除的链接 ID 列表 |
| `kept_ids` | number[] | 保留的链接 ID 列表 |

## curl 示例

```bash
curl -X POST https://your-domain.com/api/v1/remove_duplicate_links \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR"
```

## 响应示例

```json
{
  "code": 200,
  "msg": "success",
  "data": {
    "deleted_count": 2,
    "deleted_ids": [45, 48],
    "kept_ids": [42, 43, 44, 46, 47]
  }
}
```
