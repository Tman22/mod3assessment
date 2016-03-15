require 'rails_helper'

RSpec.describe "User can search by zipcode", :type => :feature do
  it "see's 3 counts " do
    visit '/'

      fill_in "Zipcode", with: "80203"
      click_on "Enter Zipcode"


    expect(current_path).to eq '/search'


  end
end
