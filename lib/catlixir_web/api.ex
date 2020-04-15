defmodule CatlixirWeb.Api do
  @moduledoc """
  Main context for the bot api.
  """

  alias CatlixirWeb.Api.Shield

  @doc """
  Get the map of the shield user for the server count.
  """
  @spec generate_servercount_shield :: {:ok, map()} | {:error, :is_nil | :not_a_struct | :not_correct_type}
  def generate_servercount_shield() do
    %Shield{
      label: "Server count",
      message: "#{Catlixir.get_server_count!()}",
      named_logo: "discord"
    }
    |> Shield.turn_to_map()
  end

end
