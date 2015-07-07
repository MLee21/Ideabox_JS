require "rails_helper"

feature "a user can" do 

  scenario "see the details of an idea" do 
    Idea.create(title: "This is my blog", body: "This is the body of my blog")
    visit ideas_path
    expect(page).to have_content("This is my blog")
    expect(page).to have_content("This is the body of my blog")
  end

end