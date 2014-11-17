module UserRecordsHelper
  def auto_brand_options
    AutoBrand.all.collect { |brand| [brand.name, brand.id] }
  end

  def get_step_from_mile (mile)
    step = case mile
             when (mile < 5000) then 1
             when (mile >= 5000) || (mile < 10000) then 2
             when (mile >= 10000) || (mile < 20000) then 3
             else 1
           end
  end

  def get_step_from_date (date)
    step = case date
             when (date > 180) then 1
             when (date >= 180) || (date < 365) then 2
             when (date >= 365) || (date < 540) then 3
             else 1
           end
  end
end
