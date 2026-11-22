module github.com/mhodieknowledge/palsa-sdks/clients/go

go 1.21

// Pinned by scripts/patch-sdks.sh, with the matching go.sum: the generator leaves this empty while
// emitting tests that need it.
require github.com/stretchr/testify v1.9.0

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
