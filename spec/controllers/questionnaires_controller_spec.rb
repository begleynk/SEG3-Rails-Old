require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe QuestionnairesController do

  # This should return the minimal set of attributes required to create a valid
  # Questionnaire. As you add validations to Questionnaire, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QuestionnairesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all questionnaires as @questionnaires" do
      questionnaire = Questionnaire.create! valid_attributes
      get :index, {}, valid_session
      assigns(:questionnaires).should eq([questionnaire])
    end
  end

  describe "GET show" do
    it "assigns the requested questionnaire as @questionnaire" do
      questionnaire = Questionnaire.create! valid_attributes
      get :show, {:id => questionnaire.to_param}, valid_session
      assigns(:questionnaire).should eq(questionnaire)
    end
  end

  describe "GET new" do
    it "assigns a new questionnaire as @questionnaire" do
      get :new, {}, valid_session
      assigns(:questionnaire).should be_a_new(Questionnaire)
    end
  end

  describe "GET edit" do
    it "assigns the requested questionnaire as @questionnaire" do
      questionnaire = Questionnaire.create! valid_attributes
      get :edit, {:id => questionnaire.to_param}, valid_session
      assigns(:questionnaire).should eq(questionnaire)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Questionnaire" do
        expect {
          post :create, {:questionnaire => valid_attributes}, valid_session
        }.to change(Questionnaire, :count).by(1)
      end

      it "assigns a newly created questionnaire as @questionnaire" do
        post :create, {:questionnaire => valid_attributes}, valid_session
        assigns(:questionnaire).should be_a(Questionnaire)
        assigns(:questionnaire).should be_persisted
      end

      it "redirects to the created questionnaire" do
        post :create, {:questionnaire => valid_attributes}, valid_session
        response.should redirect_to(Questionnaire.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved questionnaire as @questionnaire" do
        # Trigger the behavior that occurs when invalid params are submitted
        Questionnaire.any_instance.stub(:save).and_return(false)
        post :create, {:questionnaire => { "title" => "invalid value" }}, valid_session
        assigns(:questionnaire).should be_a_new(Questionnaire)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Questionnaire.any_instance.stub(:save).and_return(false)
        post :create, {:questionnaire => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested questionnaire" do
        questionnaire = Questionnaire.create! valid_attributes
        # Assuming there are no other questionnaires in the database, this
        # specifies that the Questionnaire created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Questionnaire.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => questionnaire.to_param, :questionnaire => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested questionnaire as @questionnaire" do
        questionnaire = Questionnaire.create! valid_attributes
        put :update, {:id => questionnaire.to_param, :questionnaire => valid_attributes}, valid_session
        assigns(:questionnaire).should eq(questionnaire)
      end

      it "redirects to the questionnaire" do
        questionnaire = Questionnaire.create! valid_attributes
        put :update, {:id => questionnaire.to_param, :questionnaire => valid_attributes}, valid_session
        response.should redirect_to(questionnaire)
      end
    end

    describe "with invalid params" do
      it "assigns the questionnaire as @questionnaire" do
        questionnaire = Questionnaire.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Questionnaire.any_instance.stub(:save).and_return(false)
        put :update, {:id => questionnaire.to_param, :questionnaire => { "title" => "invalid value" }}, valid_session
        assigns(:questionnaire).should eq(questionnaire)
      end

      it "re-renders the 'edit' template" do
        questionnaire = Questionnaire.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Questionnaire.any_instance.stub(:save).and_return(false)
        put :update, {:id => questionnaire.to_param, :questionnaire => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested questionnaire" do
      questionnaire = Questionnaire.create! valid_attributes
      expect {
        delete :destroy, {:id => questionnaire.to_param}, valid_session
      }.to change(Questionnaire, :count).by(-1)
    end

    it "redirects to the questionnaires list" do
      questionnaire = Questionnaire.create! valid_attributes
      delete :destroy, {:id => questionnaire.to_param}, valid_session
      response.should redirect_to(questionnaires_url)
    end
  end

end