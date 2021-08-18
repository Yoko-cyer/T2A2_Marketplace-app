class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token, only: [:show]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /lists or /lists.json
  def index
    @lists = List.all
  end

  # GET /lists/1 or /lists/1.json
  def show
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.mail,
      line_items: [{
        name: @list.meal_name,
        description: @list.description,
        images: [aws],
        amount: @list.price,
        crrency: 'aud', 
        quantity: 1,
      }],
      paymet_intent_date: {
        metadata: {
          list_id: @list.id
        } 
      },
      success_url: "#{root_url}payments/success?listId=#{@list.id}",
      cancel_url: "#{root_url}lists"
      
    )  
    @session_id = session.id
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists or /lists.json
  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: "List was successfully created." }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1 or /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: "List was successfully updated." }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1 or /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: "List was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:user_id, :meal_name, :category, :description, :ingredients, :price, :place, :time, :message, :guest_number, :picture)
    end
end
