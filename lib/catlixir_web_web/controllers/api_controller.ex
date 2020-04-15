defmodule CatlixirWebWeb.ApiController do
  use CatlixirWebWeb, :controller
  plug :put_layout, false

  @moduledoc """
  Module which represens the controller to show the API docs.
  """

  def index(conn, _params) do
    conn
    |> redirect(to: "/api/docs/index.html")
  end
end
