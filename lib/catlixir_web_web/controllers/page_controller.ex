defmodule CatlixirWebWeb.PageController do
  use CatlixirWebWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
