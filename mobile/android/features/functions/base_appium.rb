#encoding: utf-8

class BaseAppium    
    def waitId(id, timeout = 10)
        begin
            $driver.wait_true(timeout) { $driver.exists { $driver.find_element(:id, id) } }
        rescue
            puts "Elemento de id: #{id} nao encontrado"
        end
    end
    

    def click_id(id)
        $driver.find_element(:id, id).click
    end


    def find_id(id)
        begin
            $driver.find_element(:id, id)
        rescue
            raise "Element id: #{id} not found"
        end
    end


    def send_keys_id(id, text)
        $driver.find_element(:id, id).send_keys(text)
    end


    def return_string_id(id)
        element = find_id(id)
        element.attribute('text')
    end


    def hide_keyboard
        $driver.hide_keyboard
    end
end