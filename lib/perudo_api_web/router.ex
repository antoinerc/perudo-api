defmodule PerudoApiWeb.Router do
  use PerudoApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PerudoApiWeb do
    pipe_through :api
    resources("/users", UserController, except: [:new, :edit])
  end
end
