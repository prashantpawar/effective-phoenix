defmodule Kitteh.Image do
  use Kitteh.Web, :model

  schema "images" do
    field :original_name, :string
    field :url, :string
    field :size, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:original_name, :url, :size])
    |> validate_required([:original_name, :url, :size])
  end
end
