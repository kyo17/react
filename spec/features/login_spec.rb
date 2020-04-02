require 'rails_helper'

describe "Login" do
    it "Creamos un login"
    visit "http://localhost:3000/profile/8"
    fill_in "user_email" with: "test10@gmail.com"
    fill_in "user_password" with: "test12"
    find("input[type='submit]").click
    expect(page).to have_content('test10@gmail.com')
end 
end
