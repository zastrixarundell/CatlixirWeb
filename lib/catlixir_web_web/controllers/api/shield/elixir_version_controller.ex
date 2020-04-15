defmodule CatlixirWebWeb.Api.Shield.ElixirVersionController do
  use CatlixirWebWeb, :controller

  # {
  # @api {get} /api/shield/elixir Elixir version shield
  # @apiName GetElixirVerionShield
  # @apiGroup Shields
  # @apiDescription Get the current version of Elixir on which the bot is ran.
  # @apiVersion 1.0.0
  #
  # @apiSuccess {String} label          Static text: `Elixir version`.
  # @apiSuccess {String} message        Current elixir version.
  # @apiSuccess {String} named_logo     Static text: `elixir`.
  # @apiSuccess {Integer} cache_seconds Static number: `1`.
  # }
  def show(conn, _params) do
    {:ok, shield} = CatlixirWeb.Api.generate_elixir_version_shield()

    render conn, "show.json", shield: shield
  end
end
