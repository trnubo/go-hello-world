snapshot:
	goreleaser --snapshot --rm-dist

test:
	go test ./...
