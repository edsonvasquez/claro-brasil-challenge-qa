#enconding: utf-8

require_relative 'base_appium'

class App < BaseAppium
    def main_app
        waitId(ID["app"]["app_result"])
    end
    
    def send_number(position)
        value = Faker::Number.within(range: 1..500)
        send_keys_element(position, value)
        hide_keyboard
        value
    end

    def check_operation(fst_number, snd_number, op_id)
        if op_id == "op_sum"
            result = fst_number + snd_number
        elsif op_id == "op_sub"
            result = fst_number - snd_number
        elsif op_id == "op_mul"
            result = fst_number * snd_number
        elsif op_id == "op_div"
            result = fst_number / snd_number
        else 
            puts "operation not found"
        end
        result
    end

    def result_return(id)
        result = return_string_id(id)
        result.to_i
    end
end