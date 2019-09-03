defmodule MyxqlAtom.Repo do
  use Ecto.Repo,
    otp_app: :myxql_atom,
    adapter: Ecto.Adapters.MyXQL
end
