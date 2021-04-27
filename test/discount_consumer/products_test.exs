defmodule DiscountConsumer.ProductTest do
    alias DiscountConsumer.Products.Product

    test "discount_query/2 query return" do
      expected_query = ""
      assert Product.discount_query(0, 20) == expected_query
    end
end
