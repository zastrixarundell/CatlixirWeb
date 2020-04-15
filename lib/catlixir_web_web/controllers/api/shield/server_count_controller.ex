defmodule CatlixirWebWeb.Api.Shield.ServerCountController do
  use CatlixirWebWeb, :controller

  def show(conn, _params) do
    {:ok, shield} = CatlixirWeb.Api.generate_servercount_shield()

    render conn, "show.json", shield: shield
  end
end
