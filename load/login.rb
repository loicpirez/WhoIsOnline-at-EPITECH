#!/usr/bin/ruby

def check_status(login, password, login_town, town, promo, status)
    nb_students = calc_student(get_url(town, promo))
    for i in 0...nb_students
       if login_town[i].nil? == false
        then user_url = "https://intra.epitech.eu/user/" + login_town[i] + "/?format=json"
                res = Net::HTTP.post_form(URI(user_url), 'login' => login, 'password'  => password)
                body = res.body
                body.slice! "// Epitech JSON webservice ...\n"
                json_temp = JSON.parse(body)
                if status == "SCHOOL"
                  final_school(json_temp)
                elsif status == "OFFLINE"
                  final_offline(json_temp)
                elsif status == "OUTSIDE"
                  final_offline(json_temp)
            end
      end 
   end
end

def connect(login, password)
    intra = URI('https://intra.epitech.eu/')
    res = Net::HTTP.post_form(intra, 'login' => login, 'password' => password)
    if res.to_s.include? "Forbidden"
        puts "Error while logging in."
        exit 1
    elsif res.to_s.include? "Found"
        puts "Login successful."
    end
end

def login_array(req, time)
    k = 0
    j = 0
    login_town = []
    for i in 0...time
       json_temp = JSON.parse(open(req+j.to_s).read)
       for k in 0...50
        if json_temp['items'][k].nil?
        k = 50
        else
        login_town.push(json_temp['items'][k]['login'])
        end 
       end  
       j = j + 50
    end
    return login_town
end
