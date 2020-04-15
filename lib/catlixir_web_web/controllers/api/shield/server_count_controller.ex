defmodule CatlixirWebWeb.Api.Shield.ServerCountController do
  use CatlixirWebWeb, :controller

  # {
  # @api {get} /api/shield/servers Server count shield
  # @apiName GetServerCountShield
  # @apiGroup Shields
  # @apiDescription Get the current count of servers the bot is in.
  #
  #
  # @apiSuccess {String} label          Static text: `Server count`.
  # @apiSuccess {String} message        Current server count.
  # @apiSuccess {String} named_logo     Static text: `discord`.
  # @apiSuccess {Integer} cache_seconds Static number: `1`.
  # }
  def show(conn, _params) do
    {:ok, shield} = CatlixirWeb.Api.generate_server_count_shield()

    render conn, "show.json", shield: shield
  end
end
