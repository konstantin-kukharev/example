all: comment

comment: comment-run

comment-gen:
	swagger generate server -t ./gen -f ./swagger/product/comment.yml --exclude-main -A productComment --template-dir ./gen/template

comment-run:
	@go mod tidy
	@go run ./cmd/comment/main.go

gen-spec:
	swagger mixin \
		swagger/base.yml \
		swagger/product/comment.yml \
		-o ./swagger/schema.json

gen-doc:
	swagger generate markdown -f swagger/schema.json

start-ui:
	swagger serve ./swagger/schema.json -p=8080 -F swagger

ui: gen-spec gen-doc start-ui