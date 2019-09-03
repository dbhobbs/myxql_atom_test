defmodule MyxqlAtom.Application do
  use Application

  def start(_, _) do
    import Supervisor.Spec

    children = [
      supervisor(MyxqlAtom.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: MyxqlAtom.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
