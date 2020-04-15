defmodule CatlixirWebWeb.Api.Shield.UserCountController do
  use CatlixirWebWeb, :controller

  # {
  # @api {get} /api/shield/users User count shield
  # @apiName GetUserCountShield
  # @apiGroup Shields
  # @apiDescription Get the current user count of all of the real users the bot sees.
  # @apiVersion 1.0.0
  #
  # @apiSuccess {String} label          Static text: `User count`.
  # @apiSuccess {String} message        Current user count.
  # @apiSuccess {String} named_logo     Static text: `discord`.
  # @apiSuccess {Integer} cache_seconds Static number: `1`.
  # }
  def show(conn, _params) do
    {:ok, shield} = CatlixirWeb.Api.generate_user_count_shield()

    render conn, "show.json", shield: shield
  end
end
