defmodule CatlixirWeb.Api do
  @moduledoc """
  Main context for the bot api.
  """

  alias CatlixirWeb.Api.Shield

  @doc """
  Get the map of the shield for the server count.
  """
  @spec generate_server_count_shield :: {:ok, map()} | {:error, :is_nil | :not_a_struct | :not_correct_type}
  def generate_server_count_shield() do
    %Shield{
      label: "Server count",
      message: "#{Catlixir.get_server_count!()}",
      named_logo: "discord",
      color: "7289DA",
      cache_seconds: 1
    }
    |> Shield.turn_to_map()
  end

  @doc """
  Get the map of the shield for the user count.
  """
  @spec generate_user_count_shield :: {:ok, map()} | {:error, :is_nil | :not_a_struct | :not_correct_type}
  def generate_user_count_shield() do
    %Shield{
      label: "User count",
      message: "#{Catlixir.get_user_count!()}",
      named_logo: "discord",
      color: "7289DA",
      cache_seconds: 1
    }
    |> Shield.turn_to_map()
  end

  @doc """
  Get the map of the shield for the elixir version.
  """
  @spec generate_elixir_version_shield() :: {:ok, map()} | {:error, :is_nil | :not_a_struct | :not_correct_type}
  def generate_elixir_version_shield() do
    %Shield{
      label: "Elixir version",
      message: "#{System.version()}",
      named_logo: "elixir",
      color: "blueviolet",
      cache_seconds: 1
    }
    |> Shield.turn_to_map()
  end

end
