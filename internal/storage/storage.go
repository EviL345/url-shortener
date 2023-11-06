package storage

import "errors"

var (
	ErrAliasExists = errors.New("alias already exists")
	ErrURLNotFound = errors.New("url not found")
)
