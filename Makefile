all: comment

comment: comment-gen tidy comment-run

comment-gen:
	rm -rf ./gen && mkdir ./gen && \
	swagger generate server -t ./gen -f ./swagger/comment.json --exclude-main -A comment -q

comment-run:
	@go run ./cmd/comment-example-server/main.go

tidy:
	@go mod tidy

ui:
	swagger serve ./swagger/comment.json -p=8080 -F swagger