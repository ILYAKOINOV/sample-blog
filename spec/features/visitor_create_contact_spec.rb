require "rails_helper"

feature "Contact Creation" do
  scenario "allows accees to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do
    
  end 
end