require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @contacts' do
      contact1 = Contact.create(first_name: 'John', last_name: 'Doe', phone_number: '666555444')
      contact2 = Contact.create(first_name: 'Jane', last_name: 'Smith', phone_number:'111222333')

      get :index
      expect(assigns(:contacts)).to match_array([contact1, contact2])
    end
  end
end
