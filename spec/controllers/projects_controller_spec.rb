require 'rails_helper'

describe ProjectsController do
  context "#index" do
    before do
      get :index, format: :json
    end

    it { should respond_with(:success) }
  end

  context "#show" do
    let(:project) { create(:project) }
    before do
      get :show, id: project.id, format: :json
    end

    it { should respond_with(:success) }
  end

  context "#create" do
    let(:project_attributes) { attributes_for(:project) }

    before do
      post :create, project: project_attributes, format: :json
    end

    it { should respond_with(:created) }

    context "when name is blank" do
      let(:project_attributes) { attributes_for(:project).merge(name: "") }

      it { should respond_with(:unprocessable_entity) }
      it "returns the errors" do
        expect(JSON.parse(response.body)).to have_key("errors")
      end
    end
  end

  context "#update" do
    let(:project) { create(:project) }
    let(:new_name) { "Some new name" }

    before do
      put :update, id: project.id, project: { name: new_name }, format: :json
    end

    it { should respond_with(:no_content) }
    it "changes the name of the project" do
      expect(project.reload.name).to eq(new_name)
    end

    context "when name is blank" do
      let(:new_name) { "" }

      it { should respond_with(:unprocessable_entity) }
      it "returns the errors" do
        expect(JSON.parse(response.body)).to have_key("errors")
      end
    end
  end
end
