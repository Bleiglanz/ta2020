defmodule Ta2020.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :bio, :string
    field :email, :string
    field :name, :string
    field :nickname, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :bio, :nickname])
    |> validate_required([:name, :email, :bio, :nickname])
  end
end
