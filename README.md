# TestUmbrella

1) Note `apps/test_swoosh/config/config.exs` is configured to use
   `Swoosh.Adapters.Test`.

2) Run `mix deps.get && iex -S mix`

3) Run
   ```
   iex> TestSwoosh.UserEmail.welcome() |> TestSwoosh.Mailer.deliver()
   ```
   `{:ok, %{}}` is returned meaning that `Swoosh.Adapters.Test` is
   being used.

4) Kill iex

5) Change configuration in `apps/test_swoosh/config/config.exs` to
   ```
   config :test_swoosh, TestSwoosh.Mailer,
     adapter: Swoosh.Adapters.Local
   ```

6) Run `iex -S mix`. This should recompile, but it doesn't. Maybe this
   is a problem with mix?

7) Run
   ```
   iex> TestSwoosh.UserEmail.welcome() |> TestSwoosh.Mailer.deliver()
   ```
   `{:ok, %{}}` is returned meaning that `Swoosh.Adapters.Test` is
   _still_ being used.
