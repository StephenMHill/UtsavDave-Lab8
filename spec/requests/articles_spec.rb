require 'rails_helper'

RSpec.describe "Articles", type: :request do

  describe "GET /articles" do
    it "should return a list of articles" do
      click_link 'Articles'
      get articles_path
      expect(current_path).to eq(articles_path)
      expect(page).to have_content(@article.title)
    end
  end

  describe 'GET #show' do
    describe 'valid: ' do
      it 'should return an article' do
        click_link 'Arcticles'
        expect(current_path).to eq(articles_path)

        expect(page).to have_content(@article.title)

        click_link "article_show_#{@article.id}"
        expect(page).to have_content(@article.title)
        expect(page).to have_content(@article.content)
        # save_and_open_page
      end
    end

    describe 'invalid: ' do
      it 'should not return an article if one does not exist' do
        visit article_path(99_999)
        expect(current_path).to eq(articles_path)
        expect(page).to have_content("The article you're looking for cannot be found")
        # save_and_open_page
      end
    end
  end

  describe 'GET #new' do
    describe 'valid: ' do
      # Devise handles this so we skip
    end

    describe 'invalid: ' do
      # Devise handles this so we skip
    end
  end

  describe 'GET #edit' do
    describe 'valid: ' do
      # Devise handles this so we skip
    end

    describe 'invalid: ' do
      # Devise handles this so we skip
    end
  end

  describe 'DELETE #destroy' do
    describe 'valid: ' do
      # Devise handles this so we skip
    end
  end
end
