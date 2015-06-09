#!/usr/bin/ruby

def calc_student(req)
    json_init = JSON.parse(open(req+"0").read)
    nb_students = json_init['total']
end

def calc_time(req)
    nb_students = calc_student(req)
    if nb_students<50
        then time = 1
    else
         time = (nb_students/50) + 1
    end
end