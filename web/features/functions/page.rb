class MainPage < SitePrism::Page

    set_url 'http://automationpractice.com/'

    #signup
    element :signin_button, '#header > div.nav > div > div > nav > div.header_user_info > a'
    element :email_create, '#email_create'
    element :button_create, '#SubmitCreate > span > i'
    
    #personal_information
    element :gender_radio1, '#id_gender1'
    element :gender_radio2, '#id_gender2'
    element :firstname, '#customer_firstname'
    element :lastname, '#customer_lastname'
    element :email, '#email'
    element :password, '#passwd'
    element :day_dropdown, '#days'
    element :month_dropdown, '#months'
    element :year_dropdown, '#years'
    element :newsletter_checkbox, '#newsletter'
    element :offers_checkbox, '#optin'
    
    #your_address
    element :firstname_address, '#firstname'
    element :lastname_address, '#lastname'
    element :company, '#company'
    element :address_line1, '#address1'
    element :address_line2, '#address2'
    element :city, '#city'
    element :state, '#id_state'
    element :postalcode, '#postcode'
    element :country, '#id_country'
    element :additional_info, '#other'
    element :home_phone, '#phone'
    element :mobile_phone, '#phone_mobile'
    element :address_alias, '#alias'
    element :register_button, '#submitAccount > span'

    #login
    element :email_login, '#email'
    element :password_login, '#passwd'
    element :submit_button, '#SubmitLogin'

    def register
        gender_radio1.click
        firstname.set USER["firstname"]
        lastname.set USER["lastname"]
        email.set USER["email"]
        password.set USER["password"]
        page.execute_script "window.scrollBy(0,400)"
        email.click
        
        day_dropdown.select "20"
        month_dropdown.select "June"
        year_dropdown.select "1990"
        newsletter_checkbox.click
        offers_checkbox.click

        firstname_address.set USER["firstname"]
        lastname_address.set USER["lastname"]
        company.set USER["company"]
        address_line1.set USER["address_1"]
        address_line2.set USER["address_2"]
        city.set USER["city"]
        state.select USER["state"]
        postalcode.set USER["postalcode"]
        additional_info.set USER["additional_info"]
        home_phone.set USER["home_phone"]
        mobile_phone.set USER["mobile_phone"]
        address_alias.set USER["firstname"]

        register_button.click
    end
end
