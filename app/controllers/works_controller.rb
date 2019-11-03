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

  def citiesr
    @citiesr = City.select('ciname')
  end
  # GET /works/1
  # GET /works/1.json
  def show;
    if current_user.id != @work.userid && current_user.typeof == false
      @work.update(activ: @work.activ + 1)
    end

    @result_worklist = Worklist.find_by_id @work.profession
    if @result_worklist == nil
      @result_worklist = "Not selected"
    else
      @result_worklist = @result_worklist.woname
    end

    @result_ex = Experience.find_by_id @work.experience
    if @result_ex == nil
      @result_ex = "Not selected"
    else
      @result_ex = @result_ex.exname
    end

    @result_timework = Timework.find_by_id @work.wtime
    if @result_timework == nil
      @result_timework = "Not selected"
    else
      @result_timework = @result_timework.wotime
    end

    @result_co = Country.find_by_id @work.countryid
    @result_ci = City.find_by_id @work.cityid
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
      params.require(:work).permit(:strukt, :company, :name, :surname, :email, :phone, :userid, :needs, :experience, :wtime, :profession, :cominfo, :countryid, :cityid, :street, :house, :payment, :valuta)
    end
end
