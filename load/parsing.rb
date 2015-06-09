#!/usr/bin/ruby

def error_conf
 puts "Error while parsing conf. Will ask every part of conf...\n".bg_red
 return nil
end

def parsing_conf(config)
    begin
        config = ParseConfig.new('online.conf')
      return config
    rescue Errno::EACCES
	error_conf
    end
end

def parsing_promo(config)
    if config.nil? == true
       then print "Please enter the promo you want to check (2020, 2019...): "
               promo = gets.chomp
               promo = promo.split('|')
    elsif config['PROMO'].nil? == false
               promo = config['PROMO'].split('|')
    end
end

def parsing_status(config)
  if config.nil? == true
      then print "Please enter the status you want to check (SCHOOL/OUTSIDE/OFFLINE): "
              status = gets.chomp
              status = status.split('|')
  elsif config['STATUS'].nil? == false
      status = config['STATUS'].split('|')
  end
end

def parsing_town(config)
     if config.nil? == true
        then print "Please enter the town you want to check (LILLE, PARIS...): "
	    town = gets.chomp
	    town = town.split('|')
     elsif config['TOWN'].nil? == false
        town = config['TOWN'].split('|')
     end
     return town
end
