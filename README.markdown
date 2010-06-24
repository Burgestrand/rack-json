# Usage
    require 'json'
    require 'rack/json'

    use Rack::JSON

    get '/' do
     headers 'Content-type' => 'application/json'
     "response with a to_json-method"
    end