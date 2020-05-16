# CatlixirWeb
Phoenix API with [Catlixir](https://github.com/zastrixarundell/Catlixir) integrated.

![Catlixir image](https://raw.githubusercontent.com/zastrixarundell/Catlixir/master/assets/catlixir_banner.png "Catlixir")

[![Discord server badge](https://img.shields.io/discord/602112468961067011)](https://discord.gg/MdASH22) [![Server count](https://img.shields.io/endpoint?url=https%3A%2F%2Fcatlixir.gigalixirapp.com%2Fapi%2Fshield%2Fservers)](https://discordapp.com/api/oauth2/authorize?client_id=641309305227837440&permissions=0&scope=bot) [![User count](https://img.shields.io/endpoint?url=https%3A%2F%2Fcatlixir.gigalixirapp.com%2Fapi%2Fshield%2Fusers)](](https://discordapp.com/api/oauth2/authorize?client_id=641309305227837440&permissions=0&scope=bot)) ![Elixir version](https://img.shields.io/endpoint?url=https%3A%2F%2Fcatlixir.gigalixirapp.com%2Fapi%2Fshield%2Felixir) ![Github release](https://img.shields.io/github/v/release/zastrixarundell/catlixir)

## General info
This app isn't a webapp and a discord bot in one project. It's just a webapp that starts a discord bot as a package under its' Application Supervisor. This app is here only to provide API endpoint to the bot itself.

## Documentation
The webapp is using NPM to download and install `apidoc`. You can run the `./gendocs.sh` script to generate the latest API docs which are written in the controller files.

This will generate the doc files in the `assets/statis/api/docs` folder as a static html webpage, where Phoenix will redirect it to `/api/docs/index.html/`.

You can see the live view of the docs in [`https://catlixir.gigalixirapp.com`](https://catlixir.gigalixirapp.com).

## Running on Gigalixir
The webapp is ran on Gigalixir with the free tier as it doesn't shut down as Heroku does on the free tier. You an run the app on gigalixir when you do all commits and run `./launch_on_gigalixir.sh` which will create the docs for the current codebase before launching.
