json.array!(@labors) do |labor|
  json.extract! labor, :id, :system, :description, :unit, :rate_a, :rate_b
  json.url labor_url(labor, format: :json)
end
