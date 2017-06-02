## Pasos para configurar entorno de testing
1. Agregar Gemas necesarias entorno de testing
```ruby
gem 'rspec-rails', '~> 3.5'
gem 'rspec-mocks'
gem "factory_girl_rails", "~> 4.0"
```
2. Correr `bundle install`
3. Correr rspec initializers `rails generate rspec:install`
4. Crear el archivo `support/request_helper.rb` y agregar el siguiente codigo
```ruby
module Requests
  module JsonHelpers
    def json
      JSON.parse(response.body)
    end
  end
end
```
5. Agregar `require 'support/request_helper'` al principio de spec_helper
6. Agregar `config.include Requests::JsonHelpers, type: :request` dentro de las configuraciones del bloque de `RSpec.configure` para poder user el metodo `json` dentro de nuestros tests
7. Agregar `require 'factory_girl_rails'` al principio de spec_helper
8. Agregar `config.include FactoryGirl::Syntax::Methods` dentro de las configuraciones del bloque de `RSpec.configure` para poder usar `create` y `build` dentro de nuestros tests sin necesidad de incluir FactoryGirl en cada uno de nuestros test