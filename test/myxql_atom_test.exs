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

    assert returned = MyxqlAtom.working(:foo)
    assert length(returned) > 0

    assert returned = MyxqlAtom.working(:bar)
    assert length(returned) > 0

    assert returned = MyxqlAtom.working(:baz)
    assert length(returned) > 0

    assert returned = MyxqlAtom.broken(:foo)
    assert length(returned) > 0

    assert returned = MyxqlAtom.broken(:bar)
    assert length(returned) > 0

    assert returned = MyxqlAtom.broken(:baz)
    assert length(returned) > 0
  end
end
