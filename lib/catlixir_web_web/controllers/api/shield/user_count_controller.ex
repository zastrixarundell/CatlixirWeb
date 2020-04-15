defmodule CatlixirWebWeb.Api.Shield.UserCountController do
  use CatlixirWebWeb, :controller

  def show(conn, _params) do
    {:ok, shield} = CatlixirWeb.Api.generate_user_count_shield()

    render conn, "show.json", shield: shield
  end
end
