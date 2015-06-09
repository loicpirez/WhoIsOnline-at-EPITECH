#!/usr/bin/ruby

def puts_at_school(json_temp)
    print "User "
    print json_temp['title']
    puts " at school.\n"
end

def puts_offline(json_temp)
    print "User "
    print json_temp['title']
    puts " not at school.\n"
end

def puts_outside(json_temp)
    print "User "
    print json_temp['title']
    puts " outside.\n"
end

def puts_promo(promo, town, status)
    print "\nStudents from promo ".bold
    print promo.bold
    print " of ".bold
    print town.bold
    print " at".bold
    if status == "SCHOOL"
      then puts " school:".bold
        elsif status == "OFFLINE"
      then puts " nowhere:".bold 
        elsif status == "OUTSIDE"
      then puts " outside:".bold
    end
end
