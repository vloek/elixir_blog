ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ElixirBlog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ElixirBlog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ElixirBlog.Repo)

