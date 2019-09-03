defmodule MyxqlAtom do
  use Ecto.Schema

  require Ecto.Query

  import Ecto.Query

  alias MyxqlAtom.Repo

  schema "foo" do
    field :kind, MyxqlAtom.Atom
    field :desc, :string
  end

  def all(kind) do
    query =
      from f in __MODULE__,
        where: f.kind == type(^kind, MyxqlAtom.Atom)

    Repo.all(query)
  end
end
