defmodule MyxqlAtomTest do
  use ExUnit.Case

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(MyxqlAtom.Repo)
  end

  test "using atom in query" do
    stuff =
      for i <- 1..300 do
        %{
          kind: Enum.random([:foo, :bar, :baz]),
          desc: "description #{i}"
        }
      end

    MyxqlAtom.Repo.insert_all(MyxqlAtom, stuff)

    assert returned = MyxqlAtom.all(:foo)
    assert length(returned) > 0

    assert returned = MyxqlAtom.all(:bar)
    assert length(returned) > 0

    assert returned = MyxqlAtom.all(:baz)
    assert length(returned) > 0
  end
end
