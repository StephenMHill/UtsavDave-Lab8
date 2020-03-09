require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe "GET /comments" do
    it "should return a list of comments" do
      click_link 'Comments'
      get comments_path
      expect(current_path).to eq(comments_path)
      expect(page).to have_content(@comment.message)
    end
  end

  describe 'GET #show' do
    describe 'valid: ' do
      it 'should return a comment' do
        click_link 'Comments'
        expect(current_path).to eq(comments_path)

        expect(page).to have_content(@comment.message)

        click_link "comment_show_#{@comment.id}"
        expect(page).to have_content(@comment.message)
        # save_and_open_page
      end
    end

    describe 'invalid: ' do
      it 'should not return a comment if one does not exist' do
        visit comment_path(99_999)
        expect(current_path).to eq(comments_path)
        expect(page).to have_content("The comment you're looking for cannot be found")
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
