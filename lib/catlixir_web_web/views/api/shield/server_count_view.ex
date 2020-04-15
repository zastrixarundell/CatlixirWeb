defmodule CatlixirWebWeb.Api.Shield.ServerCountView do
  use CatlixirWebWeb, :view

  def render("show.json", %{shield: shield}), do:
    shield

end
