class SearchersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_searcher, only: [:show, :edit, :update, :destroy]

  # GET /searchers
  # GET /searchers.json
  def index
    if current_user.typeof == false
      @searchers = Searcher.all
    else
      redirect_to home_home_page_path
    end
  end

  # GET /searchers/1
  # GET /searchers/1.json
  def show
    if current_user.id != @searcher.user_id && current_user.typeof == true
      @searcher.update(activ: @searcher.activ + 1)
    end

    @result_worklist = Worklist.find_by_id @searcher.profession
    if @result_worklist == nil
      @result_worklist = "Not selected"
    else
      @result_worklist = @result_worklist.woname
    end

    @result_ex = Experience.find_by_id @searcher.experience
    if @result_ex == nil
      @result_ex = "Not selected"
    else
      @result_ex = @result_ex.exname
    end

    @result_timework = Timework.find_by_id @searcher.wtime
    if @result_timework == nil
      @result_timework = "Not selected"
    else
      @result_timework = @result_timework.wotime
    end

    @result_val = Valutum.find_by_id @searcher.value
    if @result_val == nil
      @result_val = "Not selected"
    else
      @result_val = @result_val.valuena
    end

    @result_co = Country.find_by_id @searcher.country_id
    @result_ci = City.find_by_id @searcher.city_id
    if @result_co == nil
      @result_co = "Not selected"
      @result_ci = "Not selected"
    elsif @result_ci == nil
      @result_co = @result_co.coname
      @result_ci = "Not selected"
    else
      @result_co = @result_co.coname
      @result_ci = @result_ci.ciname
    end
  end

  # GET /searchers/new
  def new
    if current_user.typeof == false
      @searcher = Searcher.new
    else
      redirect_to home_home_page_path
    end
  end

  # GET /searchers/1/edit
  def edit
    if current_user.typeof == true
      redirect_to home_home_page_path
    end
  end

  # POST /searchers
  # POST /searchers.json
  def create
    if current_user.typeof == false
      @searcher = Searcher.new(searcher_params)

      respond_to do |format|
        if @searcher.save
          format.html { redirect_to @searcher, notice: 'Searcher was successfully created.' }
          format.json { render :show, status: :created, location: @searcher }
        else
          format.html { render :new }
          format.json { render json: @searcher.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to home_home_page_path
    end
  end

  # PATCH/PUT /searchers/1
  # PATCH/PUT /searchers/1.json
  def update
    if current_user.typeof == false
      respond_to do |format|
        if @searcher.update(searcher_params)
          format.html { redirect_to @searcher, notice: 'Searcher was successfully updated.' }
          format.json { render :show, status: :ok, location: @searcher }
        else
          format.html { render :edit }
          format.json { render json: @searcher.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to home_home_page_path
    end
  end

  # DELETE /searchers/1
  # DELETE /searchers/1.json
  def destroy
    if current_user.typeof == false
      @searcher.destroy
      respond_to do |format|
        format.html { redirect_to searchers_url, notice: 'Searcher was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to home_home_page_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_searcher
      @searcher = Searcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def searcher_params
      params.require(:searcher).permit(:name, :surname, :skills, :phone, :experience, :user_id, :profession, :wtime, :country_id, :city_id, :payment, :value)
    end
end
