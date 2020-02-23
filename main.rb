require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get('https://dominos.com.mx')
puts 'First log in with a valid user'
login_form = page.form('formLogin')
login_form.email = "yo@you"
login_form.password = '***'
#page = agent.submit(login_form)
#verify if logged in
puts 'great, log in complete'

#pp page
#pp login_form
x = agent.get('http://dominos.com.mx/menu/pizzas')
#dat = x.search(".//div[@class='flipCard']")
dat = x.search(".//div[@class = 'col-6 col-md-3 col-lg-3 col-sm-4 col-xs-6 p-3 d-none d-sm-block d-md-block d-lg-block']" )
Pizza = Struct.new(:name, :img, :desc) do
    def description
      " #{name}!"
    end
  end
pizzas = []
dat.each do |data|
#    pp "###########################"
    name = data.search(".//div[@class = 'container-titulo titulo-pizza pt-2 pb-1 ']").last.text
    img = data.search(".//div[@class = 'front']").search(".//img[@class='img-fluid borde-pizza-home imgProduct lazyload']").last["data-src"]
    desc = data.search(".//div[@class = 'back']").last.text
    #P = Pizza.new(img,desc)
    #pp P
    pizzas.append(Pizza.new(name, img, desc))
end
pp pizzas


Paquete = Struct.new(:img, :url, :desc)
paquetes = []
Paquetes_Promociones = 'http://dominos.com.mx/menu/paquetes-promociones'
x = agent.get(Paquetes_Promociones)
#pp x
dat = x.search(".//div[@class = 'col-12 col-md-6 col-sm-12 pb-2 mt-2']")
pp dat.length
dat.each do |data|
    img = data.search(".//img[@class = 'img-fluid2 lazyload']").last["data-src"]
    desc = data.search(".//p")
    url = data.search(".//a").last["href"]
    paquetes.append(Paquete.new(img,url,desc.text))
#    puts '==========================='
end
pp paquetes

