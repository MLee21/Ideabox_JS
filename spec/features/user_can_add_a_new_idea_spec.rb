require "rails_helper"

feature "a user can" do 
  scenario "add a new idea" do 
    visit ideas_path
    fill_in "Title", with: "My new blog"
    fill_in "Body", with: "This is the newest body of my blog"
    click_button "Create Idea"
    expect(page).to have_content("My new blog")
    expect(page).to have_content("This is the newest body of my blog")
    expect(current_path).to eq(root_path)
  end
end