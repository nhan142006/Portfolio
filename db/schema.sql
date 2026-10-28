CREATE TABLE IF NOT EXISTS notes (
  id          bigint      GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  body        text        NOT NULL CHECK (length(body) > 0),
  created_at  timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS notes_created_at_idx ON notes (created_at DESC);

ALTER TABLE notes ENABLE ROW LEVEL SECURITY;