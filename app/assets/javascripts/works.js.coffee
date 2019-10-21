
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
      $('#work_metroid').parent().refresh()
    else
      $('#work_cityid').empty()
      $('#work_cityid').parent().hide()

  $("#work_countryid").trigger "change"

 # metro_model = $('#work_metroid :selected').text()
 # console.log(metro_model)
 # if metro_model.length < 1
  #  $('#work_metroid').parent().hide()
  #mmodels = $('#work_metroid').html()
  #$('#work_cityid').change ->
  #  mmake = $('#work_cityid :selected').text()
  #  console.log(mmake)
  #  mescaped_make = mmake.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
  #  moptions = $(mmodels).filter("optgroup[label='#{mescaped_make}']").html()
  #  console.log(moptions)
  #  if moptions
  #    $('#work_metroid').html(moptions)
  #    $('#work_metroid').parent().show()
  #  else
  #    $('#work_metroid').empty()
  #   $('#work_metroid').parent().hide()
  #$("#work_cityid").trigger "change"
