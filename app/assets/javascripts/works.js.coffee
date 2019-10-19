jQuery ->
  $('#work_cityid').parent().html()
  cities = $('#work_cityid').html()
  $('#work_countryid').change ->
    country = $('#work_countryid :selected').text()
    options = $(cities).filter("optgroup[label=#{country}]").html()
    if options
      $('#work_cityid').html(options)
      $('#work_cityid').parent().show()
    else
      $('#work_cityid').empty()
      $('#work_cityid').parent().hide()
