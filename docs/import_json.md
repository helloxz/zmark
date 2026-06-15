# 导入 JSON 书签

```
POST /api/v1/import_json
```

## 描述

导入 ZMark 或 OneNav 格式的 JSON 书签文件。

## 请求参数

使用 `multipart/form-data` 格式上传文件。

| 参数 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `file` | File | 是 | JSON 书签文件（.json） |

## JSON 格式

```json
{
  "type": "zmark.bookmarks",
  "categories": [
    {
      "name": "开发工具",
      "children": [
        {
          "name": "前端框架",
          "links": [
            {
              "title": "GitHub",
              "url": "https://github.com"
            }
          ]
        }
      ]
    }
  ]
}
```

**字段说明**：

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| `type` | string | 是 | `zmark.bookmarks` 或 `onenav.bookmarks` |
| `categories` | array | 是 | 一级分类数组 |
| `categories[].name` | string | 是 | 分类名称 |
| `categories[].children` | array | 否 | 二级分类数组 |
| `categories[].links` | array | 否 | 一级分类下的链接 |
| `categories[].children[].name` | string | 是 | 二级分类名称 |
| `categories[].children[].links` | array | 否 | 二级分类下的链接 |
| `links[].title` | string | 是 | 链接标题 |
| `links[].url` | string | 是 | 链接地址 |
| `links[].description` | string | 否 | 描述 |
| `links[].icon` | string | 否 | 图标 |

## 响应

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| `total` | number | 总链接数 |
| `success` | number | 成功导入数 |
| `failed` | number | 失败数 |
| `l1_count` | number | 一级分类数 |
| `l2_count` | number | 二级分类数 |

## curl 示例

```bash
curl -X POST https://your-domain.com/api/v1/import_json \
  -H "Authorization: Bearer sk-abc123DEF456ghi789JKL012mno345PQR" \
  -F "file=@bookmarks.json"
```

## 响应示例

```json
{
  "code": 200,
  "msg": "import.success",
  "data": {
    "total": 10,
    "success": 10,
    "failed": 0,
    "l1_count": 2,
    "l2_count": 3
  }
}
```
