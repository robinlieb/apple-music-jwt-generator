# Apple Music JWT Generator 
Command line tool to generate JWT for Apple Music API.

## Usage

```
$ apple-music-jwt-generator --help
OVERVIEW: A Swift command-line tool to generate JWT for Apple Music API

USAGE: apple-music-jwt-generator <subcommand>

OPTIONS:
  -h, --help              Show help information.

SUBCOMMANDS:
  generate                Generate a JWT for Apple Music API from the given input

  See 'apple-music-jwt-generator help <subcommand>' for detailed help.
```

```
$ apple-music-jwt-generator generate --help
USAGE: apple-music-jwt-generator generate <team-id> <key-id> <key-file-url> [--exp <exp>]

ARGUMENTS:
  <team-id>               10-character Team ID, obtained from your developer account.
  <key-id>                10-character key identifier (kid), obtained from your developer account.
  <key-file-url>          Path to your P8 MusicKit private key file.

OPTIONS:
  -e, --exp <exp>         Expiration time in seconds. This value should not be greater than 15777000. If omitted default of 30 days is applied
  -h, --help              Show help information.
```
