-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS url(
    id SERIAL PRIMARY KEY,
    alias TEXT NOT NULL UNIQUE,
    url TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_alias ON url(alias);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS url;
DROP INDEX IF EXISTS idx_alias;
-- +goose StatementEnd
