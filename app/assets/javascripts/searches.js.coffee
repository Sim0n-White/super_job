
jQuery ->
  loaded_model = $('#searcher_city_id :selected').text()
  console.log(loaded_model)
  if loaded_model.length < 1
    $('#searcher_city_id').parent().hide()
  models = $('#searcher_city_id').html()
  console.log(models)
  $('#searcher_country_id').change ->
    make = $('#searcher_country_id :selected').text()
    console.log(make)
    escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(models).filter("optgroup[label='#{escaped_make}']").html()
    console.log(options)
    if options
      $('#searcher_city_id').html(options)
      $('#searcher_city_id').parent().show()
    else
      $('#searcher_city_id').empty()
      $('#searcher_city_id').parent().hide()

  $("#searcher_country_id").trigger "change"

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
