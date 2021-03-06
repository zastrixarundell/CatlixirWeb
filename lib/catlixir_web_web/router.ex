defmodule CatlixirWebWeb.Router do
  use CatlixirWebWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CatlixirWebWeb do
    pipe_through :browser

    get "/", ApiController, :index
  end

  scope "/api/shield", CatlixirWebWeb do
    pipe_through :api

    alias Api.Shield

    get "/servers", Shield.ServerCountController, :show
    get "/users",   Shield.UserCountController,   :show
    get "/elixir",  Shield.ElixirVersionController,   :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", CatlixirWebWeb do
  #   pipe_through :api
  # end
end
