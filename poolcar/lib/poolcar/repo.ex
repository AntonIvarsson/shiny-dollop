defmodule Poolcar.Repo do
  use Ecto.Repo,
    otp_app: :poolcar,
    adapter: Ecto.Adapters.Postgres
end
