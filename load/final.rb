#!/usr/bin/ruby

def final_school (json_temp)
     if json_temp['locations'].nil? == false
       then puts_at_school(json_temp)
     end
end

def final_outside (json_temp)
      if json_temp['locations'].nil? == false
      	then puts_offline(json_temp)
      end
end

def final_offline (json_temp)
     if json_temp['locations'].nil? == false
        then if json_temp['locations'][0]['pie'] == false
            then puts_outside(json_temp)
     end
  end
end