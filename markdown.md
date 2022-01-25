


# api
api
  

## Informations

### Version

1.0.0

### License

[ISA]()

### Contact

kkukharev  

## Content negotiation

### URI Schemes
  * http

### Consumes
  * application/json

### Produces
  * application/json

## All endpoints

###  product

| Method  | URI     | Name   | Summary |
|---------|---------|--------|---------|
| POST | /api/product/comment | [product comment add](#product-comment-add) |  |
  


## Paths

### <span id="product-comment-add"></span> product comment add (*productCommentAdd*)

```
POST /api/product/comment
```

Добавление нового комментария к товару

#### Produces
  * application/json

#### Parameters

| Name | Source | Type | Go type | Separator | Required | Default | Description |
|------|--------|------|---------|-----------| :------: |---------|-------------|
| comment | `body` | [ProductComment](#product-comment) | `models.ProductComment` | | ✓ | | Комментарий для добавления |

#### All responses
| Code | Status | Description | Has headers | Schema |
|------|--------|-------------|:-----------:|--------|
| [200](#product-comment-add-200) | OK | OK response |  | [schema](#product-comment-add-200-schema) |
| [default](#product-comment-add-default) | | unexpected error |  | [schema](#product-comment-add-default-schema) |

#### Responses


##### <span id="product-comment-add-200"></span> 200 - OK response
Status: OK

###### <span id="product-comment-add-200-schema"></span> Schema
   
  

[OkModel](#ok-model)

##### <span id="product-comment-add-default"></span> Default Response
unexpected error

###### <span id="product-comment-add-default-schema"></span> Schema

  

[ErrorModel](#error-model)

## Models

### <span id="error-model"></span> ErrorModel


> ошибка при выполнении запроса

  





**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| code | int32 (formatted integer)| `int32` | ✓ | |  |  |
| message | string| `string` | ✓ | |  |  |



### <span id="ok-model"></span> OkModel


  

[interface{}](#interface)

### <span id="product-comment"></span> ProductComment


  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| date | string| `string` |  | | дата и время комментария в формате "2022-01-12 14:33:24" |  |
| msg | string| `string` | ✓ | | сообщение |  |
| own_id | string| `string` | ✓ | |  |  |
| product_sup_code | string| `string` | ✓ | | код товара |  |
| rating | int32 (formatted integer)| `int32` |  | | рейтинг |  |
| region_id | string| `string` | ✓ | | ид региона |  |
| review_to | int32 (formatted integer)| `int32` |  | |  |  |
| source | string| `string` |  | | application source: `app` - mobile application, `site` - site backend |  |
| tags | string| `string` |  | |  |  |


