# lita-hello

A very simple chatbot that will answer "hello there!" when a "hi" is send

## Installation

```
bundle install
```

## Configuration

If you want the integration with Slack,
go to `Settings & administration -> Manage apps`,
on `Search App Directory` search for `Lita`,
give it a name, and then on `Settings -> Edit`
get the API Token. Paste that token
on `lita_config.rb` -> `config.adapters.slack.token`.

## Usage

Run:

```
bundle exec lita
```

### Without Slack:

```
hi
```

### With Slack

Go to your Slack,
start a conversation with the name you gave to your bot,
and say `hi`. You can invite your bot to any channel,
and anytime you type `hi` it will answer with `hello there!`.

### Specs

```
cd lita-hello
bundle exec rspec
```

### Code for Handlers

`lita-hello/lib/handlers/hello.rb`
