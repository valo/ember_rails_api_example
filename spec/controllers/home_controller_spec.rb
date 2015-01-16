require 'rails_helper'

describe HomeController do

  describe "#index" do
    before do
      get :index
    end

    it { should respond_with(:success) }
  end

end
