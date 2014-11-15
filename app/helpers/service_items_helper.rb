module ServiceItemsHelper
  def auto_brand_options
    AutoBrand.all.collect { |brand| [brand.name, brand.id] }
  end
end
