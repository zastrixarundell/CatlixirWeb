defmodule CatlixirWeb.Api.Shield do
  @moduledoc """
  Struct which represents the shield.
  """

  defstruct [
    :label,
    :message,
    :color,
    :label_color,
    :is_error,
    :named_logo,
    :logo_svg,
    :logo_color,
    :logo_width,
    :logo_position,
    :style,
    :cache_seconds
  ]

  @type t() :: %__MODULE__{
    label: String.t(),
    message: String.t(),
    color: String.t(),
    label_color: String.t(),
    is_error: boolean(),
    named_logo: String.t(),
    logo_svg: String.t(),
    logo_color: String.t(),
    logo_width: integer(),
    logo_position: integer(),
    style: String.t(),
    cache_seconds: String.t()
  }

  @typedoc """
  Required. The left text, or the empty string to omit the left side of the badge. This can be overridden by the query string.
  """
  @type label :: String.t()

  @typedoc """
  Required. Can't be empty. The right text.
  """
  @type message :: String.t()

  @typedoc """
  Default: lightgrey. The right color. Supports the eight named colors above, as well as hex, rgb, rgba, hsl, hsla and css named colors. This can be overridden by the query string.
  """
  @type color :: String.t()

  @typedoc """
  Default: grey. The left color. This can be overridden by the query string.
  """
  @type label_color :: String.t()

  @typedoc """
  Default: false. true to treat this as an error badge. This prevents the user from overriding the color. In the future it may affect cache behavior.
  """
  @type is_error :: boolean()

  @typedoc """
  Default: none. One of the named logos supported by Shields or simple-icons. Can be overridden by the query string.
  """
  @type named_logo :: String.t()

  @typedoc """
  Default: none. An SVG string containing a custom logo.
  """
  @type logo_svg :: String.t()

  @typedoc """
  Default: none. Same meaning as the query string. Can be overridden by the query string.
  """
  @type logo_color :: String.t()

  @typedoc """
  Default: none. Same meaning as the query string. Can be overridden by the query string.
  """
  @type logo_width :: integer()

  @typedoc """
  Default: none. Same meaning as the query string. Can be overridden by the query string.
  """
  @type logo_position :: integer()

  @typedoc """
  Default: flat. The default template to use. Can be overridden by the query string.
  """
  @type style :: String.t()

  @typedoc """
  Default: 300, min 300. Set the HTTP cache lifetime in seconds, which should be respected by the Shields' CDN and downstream users. Values below 300 will be ignored. This lets you tune performance and traffic vs. responsiveness. The value you specify can be overridden by the user via the query string, but only to a longer value.
  """
  @type cache_seconds :: integer()

  @doc false
  def turn_to_map(struct) when is_nil(struct) do
    {:error, :is_nil}
  end

  @doc false
  def turn_to_map(struct) when is_struct(struct) == false do
    {:error, :not_a_struct}
  end

  @doc """
  Generate the map version of the specified struct.
  """
  @spec turn_to_map(struct :: struct()) :: {:ok, map()} | {:error, :is_nil | :not_a_struct | :not_correct_type}
  def turn_to_map(struct) do
    %name{} = struct

    if name != __MODULE__ do
      {:error, :not_correct_type}
    else
      if is_nil(struct.label) or is_nil(struct.message) do
        {:error, :label_or_message_nil}
      else
        map =
          %{
            "schemaVersion" => 1,
            "label" => struct.label,
            "message" => struct.message,
            "color" => struct.color,
            "labelColor" => struct.label_color,
            "isError" => struct.is_error,
            "namedLogo" => struct.named_logo,
            "logoSvg" => struct.logo_svg,
            "logoColor" => struct.logo_color,
            "logoWidth" => struct.logo_width,
            "logoPosition" => struct.logo_position,
            "style" => struct.style,
            "cacheSeconds" => struct.cache_seconds
          }
          |> Enum.filter(&filter_correct/1)
          |> Enum.into(%{})

        {:ok, map}
      end
    end
  end

  @doc false
  defp filter_correct({_key, value}) do
    !is_nil(value)
  end

end
