class Application

    def call(env)
      resp = Rack::Response.new
  
  
      if Time.now.hour < 12
        #if the time is less than 12, then display the line below
        resp.write "Good Morning!"
      else Time.now.hour >= 12
        #if the time is greater than or equal to 12, then display the line below
        resp.write "Good Afternoon!"
      end
      resp.finish
    end
  
  end 