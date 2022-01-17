class UpcaseMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    p "hogehoge"
    status, headers, body = @app.call(env)
    body.each { |s| s.gsub!(/ruby/i, "RUBY") }
    [status, headers, body]
  end
end
