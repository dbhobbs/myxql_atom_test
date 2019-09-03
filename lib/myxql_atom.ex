defmodule MyxqlAtom do
  use Ecto.Schema

  require Ecto.Query

  import Ecto.Query

  alias MyxqlAtom.Repo

  schema "foo" do
    field :kind, MyxqlAtom.Atom
    field :desc, :string
  end

  def broken(kind) do
    query =
      from f in "foo",
        where: f.kind == type(^kind, MyxqlAtom.Atom),
        select: %{kind: f.kind, desc: f.desc}

    Repo.all(query)
  end

  def working(kind) do
    kind = Atom.to_string(kind)

    query =
      from f in "foo",
        where: f.kind == ^kind,
        select: %{kind: f.kind, desc: f.desc}

    Repo.all(query)
  end
end
