class PortMap
  # default_app - Rack app
  # mappings - Hash {port, app}
  def initialize(default_app, mappings)
    @default_app = default_app
    @mappings = mappings
  end

  def call(env)
    request = Rack::Request.new(env)
    port = request.port
    app = @mappings[port] || @default_app
    app.call(env)
  end
end
