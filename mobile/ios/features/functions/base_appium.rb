#encoding: utf-8

class BaseAppium    
    def click_element(id)
        $driver.find_element(:xpath, id).click        
    end


    def send_keys_element(id, text)
        $driver.find_element(:xpath, id).send_keys(text)
    end

    
    def exists_text(text)
        begin
            $driver.exists { $driver.find_element(:xpath, "//*[@value='#{text}']") }
        rescue
            raise "Elemento de texto: #{text} nao encontrado"
        end
    end


    def find_id(id)
        begin
            $driver.find_element(:xpath, id)
        rescue
            raise "Element id: #{id} not found"
        end
    end


    def return_string_id(id)
        element = find_id(id)
        element.attribute('text')
    end
    
    
    def wait_text(text, timeout = 10)
        begin
            $driver.wait_true(timeout) { $driver.exists { $driver.find_element :xpath, "//*[contains(@value, '#{text}')]" } }
        rescue
            puts "Elemento de texto: #{text} nao encontrado"
        end
    end
end