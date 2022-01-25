package product

import (
	"esb/gen/restapi/operations/product"
	"github.com/go-openapi/runtime/middleware"
)

func CommentAdd(params product.ProductCommentAddParams) middleware.Responder {
	//var code int32 = 12
	//var customError string = "something went wrong"
	//return product.NewProductCommentAddDefault(418).WithPayload(&models.ErrorModel{code, customError})
	return product.NewProductCommentAddOK()
}
