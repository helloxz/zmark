# 批量删除链接

```
POST /api/v1/delete_links
```

## 描述

批量删除当前用户的链接。

## 请求参数

| 参数 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `ids` | number[] | 是 | 链接 ID 数组 |

## 响应

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| `count` | number | 删除数量 |
| `ids` | number[] | 已删除的链接 ID 列表 |

## curl 示例

```bash
curl -X POST https://your-domain.com/api/v1/delete_links \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR" \
  -H "Content-Type: application/json" \
  -d '{
    "ids": [42, 43, 44]
  }'
```

## 响应示例

```json
{
  "code": 200,
  "msg": "success",
  "data": {
    "count": 3,
    "ids": [42, 43, 44]
  }
}
```
