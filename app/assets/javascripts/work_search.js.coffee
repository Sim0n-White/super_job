
jQuery ->
  loaded_model = $('#cityido :selected').text()
  console.log(loaded_model)
  if loaded_model.length < 1
    $('#cityido').parent().hide()
  models = $('#cityido').html()
  console.log(models)
  $('#countryido').change ->
    make = $('#countryido :selected').text()
    console.log(make)
    escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(models).filter("optgroup[label='#{escaped_make}']").html()
    console.log(options)
    if options
      $('#cityido').html(options)
      $('#cityido').parent().show()
    else
      $('#cityido').empty()
      $('#cityido').parent().hide()

  $("#countryido").trigger "change"

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
