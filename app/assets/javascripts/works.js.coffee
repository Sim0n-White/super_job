
jQuery ->
  loaded_model = $('#work_cityid :selected').text()
  console.log(loaded_model)
  if loaded_model.length < 1
    $('#work_cityid').parent().hide()
  models = $('#work_cityid').html()
  console.log(models)
  $('#work_countryid').change ->
    make = $('#work_countryid :selected').text()
    console.log(make)
    escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(models).filter("optgroup[label='#{escaped_make}']").html()
    console.log(options)
    if options
      $('#work_cityid').html(options)
      $('#work_cityid').parent().show()
    else
      $('#work_cityid').empty()
      $('#work_cityid').parent().hide()

  $("#work_countryid").trigger "change"