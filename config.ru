# config.ru
require 'rack'
class MiPrimeraWebApp #Objeto con el método call
  def call(env) #Info del request
    if env['REQUEST_PATH'] == '/index' 
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']] #La respuesta
     elsif env['REQUEST_PATH'] == '/otro'
      [202, { 'Content-Type' => 'text/html' }, ['<h1>Estas en otro landing!</h1>']]
    else
	  [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
  end
end
run MiPrimeraWebApp.new