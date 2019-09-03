defmodule MyxqlAtom.Repo.Migrations.CreateTable do
  use Ecto.Migration

  def change do
    create table(:foo) do
      add :kind, :string, null: false
      add :desc, :string
    end
  end
end
