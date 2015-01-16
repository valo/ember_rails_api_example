require 'rails_helper'

describe TasksController do
  context "#index" do
    let(:task) { create(:task) }
    before do
      get :index, project_id: task.project_id, format: :json
    end

    it { should respond_with(:success) }
  end

  context "#show" do
    let(:task) { create(:task) }
    before do
      get :show, id: task.id, format: :json
    end
  end

  context "#create" do
    let(:task_attributes) { attributes_for(:task) }

    before do
      post :create, task: task_attributes, format: :json
    end

    it { should respond_with(:created) }

    context "when name is blank" do
      let(:task_attributes) { attributes_for(:task).merge(name: "") }

      it { should respond_with(:unprocessable_entity) }
      it "returns the errors" do
        expect(JSON.parse(response.body)).to have_key("errors")
      end
    end
  end

  context "#update" do
    let(:task) { create(:task) }
    let(:new_name) { "Some new name" }

    before do
      put :update, id: task.id, task: { name: new_name }, format: :json
    end

    it { should respond_with(:no_content) }
    it "changes the name of the task" do
      expect(task.reload.name).to eq(new_name)
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
