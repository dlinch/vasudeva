defmodule Vasudeva.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Vasudeva.User


  schema "users" do
    field :bio, :string
    field :email, :string
    field :name, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email, :bio, :password])
    |> validate_required([:name, :email, :bio, :password])
  end
end
