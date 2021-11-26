defmodule DesafioCrossCommerce.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :"\"", :string

      timestamps()
    end
  end
end
