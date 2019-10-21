OpenWeatherAPI.configure do |config|
  # API key
  config.api_key = "8f960837e2msh5d3c11763a419c4p1ce8c9jsn63a831ab8b59"

  # Optionals
  config.default_language = 'es'     # 'en' by default
  config.default_country_code = 'es' # nil by default (ISO 3166-1 alfa2)
  config.default_units = 'metric'    # 'metric' by default
end