class PresentationdetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_presentationdetail_userid
  before_action :set_presentationdetail, only: [:show, :edit, :update, :destroy]
  before_action :set_presentationuser, only: [:update, :destroy]

  # GET /presentationdetails
  # GET /presentationdetails.json
  def index
    @presentationdetails = Presentationdetail.all
  end

  # GET /presentationdetails/1
  # GET /presentationdetails/1.json
  def show
  end

  # GET /presentationdetails/new
  def new
    @presentationdetail = Presentationdetail.new
    @presentationdetail.user = current_user
    @presentationdetail.user_id = @puid
  end

  # GET /presentationdetails/1/edit
  def edit
  end

  # POST /presentationdetails
  # POST /presentationdetails.json
  def create
    @presentationdetail = Presentationdetail.new(presentationdetail_params)
    @presentationdetail.user = current_user
    @presentationdetail.user_id = @puid

    respond_to do |format|
      if @presentationdetail.save
        format.html { redirect_to @presentationdetail, notice: 'Presentationdetail was successfully created.' }
        format.json { render :show, status: :created, location: @presentationdetail }
      else
        format.html { render :new }
        format.json { render json: @presentationdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentationdetails/1
  # PATCH/PUT /presentationdetails/1.json
  def update
    respond_to do |format|
      if @presentationdetail.update(presentationdetail_params)
        format.html { redirect_to @presentationdetail, notice: 'Presentationdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @presentationdetail }
      else
        format.html { render :edit }
        format.json { render json: @presentationdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentationdetails/1
  # DELETE /presentationdetails/1.json
  def destroy
    @presentationdetail.destroy
    respond_to do |format|
      format.html { redirect_to presentationdetails_url, notice: 'Presentationdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentationdetail
      @presentationdetail = Presentationdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presentationdetail_params
      params.require(:presentationdetail).permit(:tname, :tdescription, :fostudy, :dtpresent, :prname, :prdetails, :typepresent, :price)
    end

    def set_presentationuser
      @presentationdetail.user = current_user
    end

    def set_presentationdetail_userid
      if user_signed_in?
        @puid = current_user.id
      end
    end
end
