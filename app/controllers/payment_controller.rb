class PaymentController < ApplicationController
  def input
  end

  def output
    if current_user.typeof == true
      redirect_to home_home_page_path
    end
    if current_user.typeof == false
      @profession = params[:profession][:id]
      @experience = params[:experience][:id]
      @education = params[:education]
      @sertificares = params[:sertificares]
      @language = params[:language]
      @recomendations = params[:recomendations]
      @place = params[:place]

      @result = Work.all
      @result_ex = Experience.all
      @result_wl = Worklist.all
      @result_wt = Timework.all

      @result = @result.where('profession LIKE ?', @profession)

      @minpaych = @result
      @maxpay = 0
      @minpay = @result.maximum(:payment)

      for i in 0..@experience.to_i do
        @result.each do |item|
          if item.experience <= @experience.to_i
            if item.value == 2
              if @maxpay < (item.payment * 60)
                @maxpay = (item.payment * 60)
              end
            elsif item.value == 3
              if @maxpay < (item.payment * 70)
                @maxpay = (item.payment.to_i * 70)
              end
            elsif item.value == 4
            if @maxpay < (item.payment * 81)
              @maxpay = item.payment.to_i * 81
            end
            else
              if @maxpay < (item.payment * 81)
                @maxpay = (item.payment.to_i * 81)
              end
            end
          end
          if item.value == 2
            if @minpay > (item.payment * 60)
              @minpay = (item.payment * 60)
            end
          elsif item.value == 3
            if @minpay > (item.payment * 70)
              @minpay = (item.payment.to_i * 70)
            end
          elsif item.value == 4
            if @minpay > (item.payment * 81)
              @minpay = item.payment.to_i * 81
            end
          else
            if @minpay > (item.payment * 81)
              @minpay = (item.payment.to_i * 81)
            end
          end
        end
      end
    end
    @sevpaymentmin = (@minpay + @maxpay)/2.round
    @sevpaymentmax = @sevpaymentmin

    case @education.to_i
    when 1
      @sevpaymentmax = @sevpaymentmax + 0
    when 2
      @sevpaymentmax = @sevpaymentmax + 5000
    when 3
      @sevpaymentmax = @sevpaymentmax + 7000
    when 4
      @sevpaymentmax = @sevpaymentmax + 10000
    when 5
      @sevpaymentmax = @sevpaymentmax + 15000
    end

    case @sertificares.to_i
    when 1
      @sevpaymentmax = @sevpaymentmax + 0
    when 2
      @sevpaymentmax = @sevpaymentmax + 2000
    when 3
      @sevpaymentmax = @sevpaymentmax + 6000
    end

    case @language.to_i
    when 1
      @sevpaymentmax = @sevpaymentmax + 0
    when 2
      @sevpaymentmax = @sevpaymentmax + 2000
    when 3
      @sevpaymentmax = @sevpaymentmax + 6000
    end

    case @recomendations.to_i
    when 1
      @sevpaymentmax = @sevpaymentmax + 0
    when 2
      @sevpaymentmax = @sevpaymentmax + 4000
    end

    case @place.to_i
    when 1
      @sevpaymentmax = @sevpaymentmax + 7000
    when 2
      @sevpaymentmax = @sevpaymentmax + 4000
    when 3
      @sevpaymentmax = @sevpaymentmax + 2000
    when 4
      @sevpaymentmax = @sevpaymentmax + 1000
    when 5
      @sevpaymentmax = @sevpaymentmax + 0
    end

  end
end
