class WorkSearchController < ApplicationController
  before_action :authenticate_user!
  def input
    if current_user.typeof == true
      redirect_to home_home_page_path
    end
  end

  def output
    if current_user.typeof == false
      @countryid = params[:countryido]
      @cityid = params[:cityido]
      @company = params[:company]
      @profession = params[:profession]
      @experience = params[:experience]
      @wtime = params[:wtime]

      @result = Work.all
      @result_co = Country.all
      @result_ci = City.all
      @result_ex = Experience.all
      @result_wl = Worklist.all
      @result_tw = Timework.all
      @result_val = Valutum.all

      if (@countryid != nil && @countryid.present?)
        @result = @result.where('countryid LIKE ?', @countryid)
      end
      if (@cityid != nil && @cityid.present?)
        @result = @result.where('cityid LIKE ?', @cityid)
      end
      if (@company != nil && @company.present?)
        @result = @result.where('company LIKE ?', @company)
      end
      if (@profession != nil && @profession.present?)
        @result = @result.where('profession LIKE ?', @profession)
      end
      if (@experience != nil && @experience.present?)
        @result = @result.where('experience LIKE ?', @experience)
      end
      if (@wtime != nil && @wtime.present?)
        @result = @result.where('wtime LIKE ?', @wtime)
      end
      respond_to do |format|
        format.js { render 'output.js.erb' }
      end
    end
  end
end
