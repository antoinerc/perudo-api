defmodule PerudoApiWeb.UserView do
  use PerudoApiWeb, :view
  alias PerudoApiWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id, email: user.email, username: user.username, is_active: user.is_active}
  end
end