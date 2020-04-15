defmodule CatlixirWebWeb.Api.ShieldView do
  defmacro __using__(_) do
    quote do
      use CatlixirWebWeb, :view

      def render("show.json", %{shield: shield}), do:
        shield
    end
  end
end
