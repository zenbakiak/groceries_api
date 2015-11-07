# Groceries App

# Getting started

## Requirements
This application assumes you have at least Ruby, Postgres and other dependencies to run.
If that is not the case you can use [kaishi] to install everything you need.

[kaishi](https://github.com/IcaliaLabs/kaishi)

Also, this application contains a .ruby-version file in case you use rbenv

## Dependencies
- Ruby 2.2.3
- Rails 4.2.4
- Postgres


### Development

[Mailcatcher](http://mailcatcher.me/)
(Don't forget to run mailcatcher)

This application uses subdomains, you may need [Pow](http://pow.cx/) (for mac) || [Prax](https://github.com/ysbaddaden/prax) (linux) to run your application.

link your app with ```groceries.dev```

In order to watch development.log run:

```% tail -f log/development.log```

Restarting the app:

```% touch tmp/restart.txt```

## Icalia Guides

Remember you can always rely on the Icalia Guides to a better development and
internal progamming style:

* [Rails Guides](https://github.com/IcaliaLabs/icalia_guides/tree/master/rails)
