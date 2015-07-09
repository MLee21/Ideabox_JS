require "rails_helper"

feature "a user can" do 
  xscenario "add a new idea" do 
    visit ideas_path
    click_link "New Idea"
    fill_in "Title", with: "My new blog"
    fill_in "Body", with: "This is the newest body of my blog"
    click_button "Create Idea"
    expect(page).to have_content("My new blog")
    expect(page).to have_content("This is the newest body of my blog")
    expect(current_path).to eq(root_path)
  end
end