class SimpleMiddleware
  def initialize(app)
    puts "initilalize!!"
    @app = app
  end

  def call(env)
    puts "call!!"
    puts "env"
    p env
    status, headers, body = @app.call(env)
    return [status, headers, body]
  end
end