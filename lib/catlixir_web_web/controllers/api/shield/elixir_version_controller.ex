defmodule CatlixirWebWeb.Api.Shield.ElixirVersionController do
  use CatlixirWebWeb, :controller

  def show(conn, _params) do
    {:ok, shield} = CatlixirWeb.Api.generate_elixir_version_shield()

    render conn, "show.json", shield: shield
  end
end
