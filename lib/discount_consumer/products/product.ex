defmodule DiscountConsumer.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false

  schema "products" do
    field :discount, :decimal
    field :name, :string
    field :price, :decimal

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :discount, :price])
    |> validate_required([:name, :discount, :price])
  end

  def discount_query(range1, range2) do
    from p in __MODULE__,
      select: p,
      where: p.discount >= ^range1 and p.discount <= ^range2
  end
end
