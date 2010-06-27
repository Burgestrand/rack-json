module Rack
  class JSON
    def initialize(app)
      @app = app
    end
    
    def call(env)
      status, headers, body = @app.call env
      if json? headers
        body = [body].flatten.map(&:to_json)
        headers['Content-Length'] = body.inject(0) { |len, part| len + part.bytesize }.to_s
      end
      return [status, headers, body]
    end
    
    def json?(headers)
      return headers.fetch('Content-type', '').match 'application/json'
    end
  end
end