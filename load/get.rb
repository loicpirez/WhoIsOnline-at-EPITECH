#!/usr/bin/ruby

def get_login(config)
  if config.nil? == false
      then if config['LOGIN'].nil? == false
           then login = config['LOGIN']
         end
  else
    print "Please enter your login: "
    login = gets.chomp
    return login
  end
end

def get_password(config)
  if config.nil? == false
      then if config['PASSWORD'].nil? == false
           then password = config['PASSWORD']
         end
  else
    print "Please enter your password: "
    password = STDIN.noecho(&:gets).chomp
    puts "\n"
    return password
  end
end

def get_url(town, promo)
    req = "https://intra.epitech.eu/user/filter/user?format=json&location=FR/"
    req = req+town + "&year=2014" + "&course=bachelor/classic&active=true&promo="
    if promo == "2019"
      then req = req + "tek1"
        elsif promo == "2018"
      then req = req + "tek2"
        elsif promo == "2017"
      then req = req + "tek3"
        elsif promo == "2016"
      then req = req + "tek4"
        elsif promo == "2015"
      then req = req + "tek5"
    end
    req = req + "&offset="
    return req
end
