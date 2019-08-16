defmodule PerudoApi.Repo do
  use Ecto.Repo,
    otp_app: :perudo_api,
    adapter: Ecto.Adapters.Postgres
end
