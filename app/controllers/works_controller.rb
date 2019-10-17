class WorksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  # GET /works
  # GET /works.json
  def index
    if current_user.typeof == true
      @works = Work.all
    else
      redirect_to home_home_page_path
    end
  end

  # GET /works/1
  # GET /works/1.json
  def show; end

  # GET /works/new
  def new
    if current_user.typeof == true
      @work = Work.new
    else
      redirect_to home_home_page_path
    end
  end

  # GET /works/1/edit
  def edit
    if current_user.typeof == false
      redirect_to home_home_page_path
    end
  end

  # POST /works
  # POST /works.json
  def create
    if current_user.typeof == true
      @work = Work.new(work_params)

      respond_to do |format|
        if @work.save
          format.html { redirect_to @work, notice: 'Work was successfully created.' }
          format.json { render :show, status: :created, location: @work }
        else
          format.html { render :new }
          format.json { render json: @work.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to home_home_page_path
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    if current_user.typeof == true
      respond_to do |format|
        if @work.update(work_params)
          format.html { redirect_to @work, notice: 'Work was successfully updated.' }
          format.json { render :show, status: :ok, location: @work }
        else
          format.html { render :edit }
          format.json { render json: @work.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to home_home_page_path
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    if current_user.typeof == true
      @work.destroy
      respond_to do |format|
        format.html { redirect_to works_url, notice: 'Work was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to home_home_page_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:strukt, :company, :name, :surname, :email, :phone, :userid, :needs, :cominfo, :countryid, :cityid, :metroid, :street, :house, :payment, :valuta)
    end
end
