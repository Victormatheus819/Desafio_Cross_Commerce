defmodule DesafioCrossCommerce.StoreFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `DesafioCrossCommerce.Store` context.
  """

  @doc """
  Generate a book.
  """
  def book_fixture(attrs \\ %{}) do
    {:ok, book} =
      attrs
      |> Enum.into(%{
        ": "some \""
      })
      |> DesafioCrossCommerce.Store.create_book()

    book
  end
end
