defmodule TestSwoosh.UserEmail do
  import Swoosh.Email

  def welcome do
    new()
    |> to({"User", "user@example.com"})
    |> from({"User", "user@example.com"})
    |> subject("Hello")
    |> text_body("Hello")
  end
end
