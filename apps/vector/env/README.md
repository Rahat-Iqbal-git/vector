# Environment config

This app reads its config (API base URL, CoinGecko key, logging toggle) from
JSON files in this folder instead of hardcoding them anywhere. The actual
files with your values are git-ignored — you won't find `dev.json` after
cloning the repo, only `dev.example.json`. That's on purpose, so nobody
accidentally commits a real key.

## Getting set up

Copy each example file and drop your own values in:

```bash
cp env/dev.example.json     env/dev.json
cp env/staging.example.json env/staging.json
cp env/prod.example.json    env/prod.json
```

You'll need a CoinGecko API key for `COINGECKO_API_KEY` — grab a free demo
one at <https://www.coingecko.com/en/developers/dashboard> if you don't have
one yet.

## What goes in each file

- **`BASE_URL`** — the CoinGecko API base URL.
- **`COINGECKO_API_KEY`** — your key, sent along as the `x-cg-demo-api-key`
  header on every request.
- **`ENABLE_LOGGING`** — turn network/debug logging on or off.

## Where these files actually get used

- VS Code: the launch configs in `.vscode/launch.json` pass
  `--dart-define-from-file=env/<env>.json` for you automatically.
- Terminal: pass the same flag yourself, e.g.
  `flutter run --flavor development --target lib/main_development.dart --dart-define-from-file=env/dev.json`.
- CI: `env/prod.json` doesn't exist on the runner (it's git-ignored, same as
  locally), so the workflow generates it on the fly from the
  `COINGECKO_API_KEY` GitHub secret before building.

Under the hood, `lib/config/environment.dart` just reads these values with
`String.fromEnvironment` — so if you're wondering how a value flows from
this JSON into the app, that's the file to look at.
