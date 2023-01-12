require "rails_helper"

RSpec.feature "Create Articles" do
    scenario "A user creates a new article" do 
        visit "/" # Go to root
        click_link "New Article" # Go to new article link 
        
        fill_in "Title", with: "Creating a blog" # Fill in the title field with "Creating a blog"
        fill_in "Body", with: "Body text here" # Fill in the body aread with text

        click_button "Create Article" # Click create article button 

        expect(page).to have_content("Article has been created") # Set expectation after creating article
        expect(page.current_path).to eq(articles_path)
    end
end