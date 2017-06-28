require "rails_helper"

feature "Admin creates a sequence" do
  scenario "successfully" do
    visit root_path
    click_link "New Sequence"
    fill_in "Name", with: "Play Music in 7 days"
    click_button "Create"

    expect(page).to have_content "Play Music in 7 days"
  end
end
