<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head><link href="../../css/common.css" rel="stylesheet" /><link href="../../css/fonts/font.css" rel="stylesheet" /><link href="../../css/innerpage.css" rel="stylesheet" /><title>

</title></head><body><form method="post" action="Ajaxmap.aspx" id="ctl01">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="lwlIeFuC3quWlcq0quqfwfqigaiDJv+KRIe1RuiaEvHRlLcQvpd/TIuD0J14+aPCP1MotyQaAGIn493FsiGa6sLWF1P97W6xSwflLnfqfkp4XsQyzRnMWGgld0ad506dxV+d7v8qnbqVIU5CG8O1Knha0WSUVUOU0eUSHz6TyTjdFSpi2FiZJb0KLlS1j0m59P41nDL6FaXRofOdQDYt/Uuc29Xmmk7KizpQcGISbnXHPg5zrTTRA0gynHcB37T3rmTga1++slc59QDTUuM1d+kqOF7xf4hz8crITL/p3mbue/jR" />


<script src="../../ScriptResource.axd?d=Iqsgf3aQEsBaQwa7NDOjIGrT8-l8k8F_iQaO9qzegAzmX1JUPOTT0qulDCqteDuml3M9BEDr0Uo6UwJtu_Awksu9tszyZuYhaMlRd4FO73aUE2UO6jlL2wxDakJrSbSC5IIPT_aOj4sO-e2zhPrjUcPWBSA1&amp;t=72e85ccd" type="text/javascript"></script>
<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B51B7CD6" />
<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBpUY0EiL1ID3uI5fdPBYNrrRlHLTj7ahI&region=IN"></script><!--<script type="text/javascript" src="/js/maps.googleapis.com.js"></script>--> <script type="text/javascript">var markers=[];</script> <script src="https://www.bharatpetroleum.com/js/jquery.min.js" type="text/javascript"></script> <script>var lastLatLong;var testArray=[];var india=new google.maps.LatLng(22.319915,79.347364);var marker;var desc;var mapOptions;var geocoder;var directionsDisplay;var directionsService1=new google.maps.DirectionsService();var map;var marker;var marker1;var origin=null;var destination=null;var source=null;var dest=null;var waypoints=[];var markers=[];var markers1=[];var arr=[];var infowindow;var infowindow1;var PointsArray=[];var vertexVal="";var noOfCords="";var flag=1;var flag1=1;var ddlSelected;var UrlCity;var UrlRoute;var finalDestination;var imgTitle=["Petrocard,Fleetcard","Pure For Sure","Automation","Speed","In-Out","ATM","Toilet","CNG","Auto LPG","Secured Parking","Smart Fleet Customer Care","Vehical Service Center","Dhaba","Dormitory","Bath","Loundry","Cooking","Emergency","Cut On Divider","Water","Platinum"];$(document).ready(function(){function Initialize(){var mapOptions2={zoom:4,center:india,mapTypeId:google.maps.MapTypeId.ROADMAP};map=new google.maps.Map(document.getElementById('dvMap'),mapOptions2);} google.maps.event.addDomListener(window,'load',Initialize);$('#ddlOffice').hide();$('#ddlState').change(function(){$("#divInnerHtml").empty();fillCity();});$('#ddlCategory').change(function(){$("#divInnerHtml").empty();if($('#ddlCategory').val()=="Installation"){$('#ddlOffice').hide();$('#ddlRetailsOutlets').hide();fillStates();$('#ddlCity').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');} if($('#ddlCategory').val()=="TOP"){$('#ddlOffice').hide();$('#ddlRetailsOutlets').hide();fillStates();$('#ddlCity').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');} if($('#ddlCategory').val()=="Depot"){$('#ddlOffice').hide();$('#ddlRetailsOutlets').hide();fillStates();$('#ddlCity').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');} if($('#ddlCategory').val()=="Despatch Unit"){$('#ddlOffice').hide();$('#ddlRetailsOutlets').hide();fillStates();$('#ddlCity').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');} if($('#ddlCategory').val()=="Terminal"){$('#ddlOffice').hide();$('#ddlRetailsOutlets').hide();fillStates();$('#ddlCity').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');} if($('#ddlCategory').val()=="fulestation"){$('#ddlOffice').hide();$('#ddlRetailsOutlets').show();fillStates();$('#ddlCity').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');} if($('#ddlCategory').val()=="office"){$('#ddlOffice').show();$('#ddlRetailsOutlets').hide();fillStates();$('#ddlCity').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');} if($('#ddlCategory').val()=="none"){$('#ddlOffice').hide();$('#ddlRetailsOutlets').hide();$('#ddlCity').empty();$('#ddlState').empty();$('#ddlCity').append('<option value="none">Select District/City</option>');$('#ddlState').append('<option value="none">Select District/City</option>');}});$('#ddlCity').change(function(){$("#divInnerHtml").empty();fillOfficeType();});function clearMap(){function clearMapCall(){var india1=new google.maps.LatLng(22.319915,79.347364);var mapOptionsTwo1={zoom:4,center:india1};map='';map=new google.maps.Map(document.getElementById('dvMap'),mapOptionsTwo1);} google.maps.event.addListener(map,'projection_changed',clearMapCall);} function fillStates(){$('#ddlState').empty();var varCategory=$('#ddlCategory').val();var varLanguage=$('#lblLanguage').html();$.ajax({type:"POST",contentType:"application/json",data:JSON.stringify({strCategory:varCategory,strLanguage:varLanguage}),async:false,url:"Ajaxmap.aspx/GetState",dataType:"json",success:function(response){if(response.d.length>0){var ltlng=[];var obj=JSON.stringify(response.d);var json=$.parseJSON(obj);var firstLatlng;var varOfficeType;$('#ddlState').append('<option value="none">Select State</option>');$.each(json,function(index,loc){var ltlng=[];varOfficeType="";var varCity=loc.strState;$('#ddlState').append(varCity);});}else{$('#ddlState').empty();$('#ddlState').append("<option value='none'>No City Found</option>");}},error:function(e){$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>No Data Found</span>");}});} function fillCity(){$('#ddlCity').empty();var varCategory=$('#ddlCategory').val();var varState=$('#ddlState').val();var varLanguage=$('#lblLanguage').html();$.ajax({type:"POST",contentType:"application/json",data:JSON.stringify({strState:varState,strCategory:varCategory,strLanguage:varLanguage}),async:false,url:"Ajaxmap.aspx/GetCity",dataType:"json",success:function(response){if(response.d.length>0){var ltlng=[];var obj=JSON.stringify(response.d);var json=$.parseJSON(obj);var firstLatlng;var varOfficeType;$('#ddlCity').append('<option value="none">Select District/City</option>');$.each(json,function(index,loc){var ltlng=[];varOfficeType="";var varCity=loc.strCity;$('#ddlCity').append(varCity);});}else{$('#ddlCity').empty();$('#ddlCity').append("<option value='none'>No City Found</option>");}},error:function(e){$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>No Data Found</span>");}});} function fillOfficeType(){$('#ddlOffice').empty();var varCity=$('#ddlCity').val();$.ajax({type:"POST",contentType:"application/json",data:JSON.stringify({strCity:varCity}),async:false,url:"Ajaxmap.aspx/GetOfficeType",dataType:"json",success:function(response){if(response.d.length>0){var ltlng=[];var obj=JSON.stringify(response.d);var json=$.parseJSON(obj);var firstLatlng;var varOfficeType;$('#ddlOffice').append('<option value="none">Select Office Type</option>');$.each(json,function(index,loc){var ltlng=[];varOfficeType="";var varOfficeType=loc.strOfficeType;$('#ddlOffice').append(varOfficeType);});}else{$('#ddlOffice').empty();$('#ddlOffice').append("<option value='noofficefound'>No Office Found</option>");}},error:function(e){$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>No Data Found</span>");}});} $("#btnSubmit").click(function(){var varCategory=$('#ddlCategory').val();var varOffice=$('#ddlOffice').val();var varService=$('#ddlRetailsOutlets').val();var varState=$('#ddlState').val();var varCity=$('#ddlCity').val();var mapOptionsTemp;mapOptionsTemp={zoom:12,center:india};$("#divInnerHtml").empty();if(!(varState=="none")){if(!(varCity=="none")){if($("#ddlCategory").val()=="none"){$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>Please Select a Category</span>");return;} $.ajax({type:"POST",contentType:"application/json",data:JSON.stringify({strState:varState,strCity:varCity,strCategory:varCategory,strService:varService,strOffice:varOffice}),async:false,url:"Ajaxmap.aspx/GetAllOffice",dataType:"json",success:function(response){var ltlng=[];if(varCategory=="fulestation"){var obj=JSON.stringify(response.d);var json=$.parseJSON(obj);var firstLatlng;var varLastLat;var varLatFlag=0;var varLoopCount=0;map=new google.maps.Map(document.getElementById('dvMap'),mapOptionsTemp);$.each(json,function(index,loc){var ltlng=[];var Ro_Name=loc.strRo_Name;var Sapcc=loc.strSapcc;var Address1=loc.strAddress1;var State=loc.strState;var City=loc.strCity;var Pin=loc.strPinCode;var services=loc.strServices;var policestnname=loc.strPoliceStnName;var policestnno=loc.strPoliceStnNo;var hospitalname=loc.strHospitalName;var hospitalno=loc.strHospitalNo;var strLat=parseFloat(loc.intLattitude);var strLag=parseFloat(loc.intLogitude);var SpaccImage=loc.strSpaccImage;var SpaccImageUrl=loc.strSpaccImageUrl;var price="Price";varLoopCount++;if(isNaN(strLag)){return true;} if(strLag){varLastLat=strLat;varLatFlag++;} ltlng.push(new google.maps.LatLng(strLat,strLag));var imgs=new Array();for(i=0;i<testArray.length;i++){imgs.push("/images/locate_us/smallmap1/"+testArray[i]);} var imgServices="";var imgFlag=0;var lastImgOfServices=imgs.length;for(i=0;i<imgs.length;i++){imgFlag=0;if(i==6){imgServices+='<li><img src="https://www.bharatpetroleum.com/Our-Businesses/Fuels-and-Services/'+imgs[i]+'" title="'+imgTitle[i]+'" /><//li>';imgFlag=1;} if(i==19){imgServices+='<li><img src="https://www.bharatpetroleum.com/Our-Businesses/Fuels-and-Services/'+imgs[i]+'" title="'+imgTitle[i]+'" /></li>';imgFlag=1;if(SpaccImageUrl){imgServices+=SpaccImageUrl;}} if(services[i]=="1"||services[i]=="2"){if(imgFlag==0){if(services[i]=="2"){imgServices+='<li><img src="https://www.bharatpetroleum.com/Our-Businesses/Fuels-and-Services/'+imgs[lastImgOfServices-1]+'" title="'+imgTitle[lastImgOfServices-1]+'" /></li>';} else{imgServices+='<li><img src="https://www.bharatpetroleum.com/Our-Businesses/Fuels-and-Services/'+imgs[i]+'" title="'+imgTitle[i]+'" /></li>';}}}} if(!firstLatlng){firstLatlng=ltlng[0];lastLatLong=firstLatlng;} for(var i=0;i<=ltlng.length;i++){marker=new google.maps.Marker({map:map,position:ltlng[i],animation:google.maps.Animation.Animate,icon:"/images/location_icon.png"});markers.push(marker);flag1=1;(function(i,marker){google.maps.event.addListener(marker,'click',function(){if(!infowindow){infowindow=new google.maps.InfoWindow();} var desc='<div class="map-content" style="display:block;">'+'<div class="location">'+'<div class="left">'+'<img src="../../images/locate_us/locate-img.jpg" alt="Location Image">'+'</div>'+'<div class="right">'+'<h2>'+Ro_Name+'</h2>'+'<p>'+Address1+',&nbsp;'+City+'<br>'+State+'&nbsp;'+Pin+'</p>'+'</div>'+'</div>'+'<div class="amenities">'+'<p>Amenities</p>'+'<ul>'+ imgServices+'</ul>'+'</div>'+'</div>';infowindow.setContent(desc);infowindow.open(map,marker);});})(i,marker);var strInnerHtml="<div id='mapfrm' class='map-s-frm'><h2>"+Ro_Name+"</h2>" +"<p>"+Address1+"<br>" +"<p>"+City+"</p>" +"<p>"+State+"</p>" +"<p><ul style='display:inline-flex;'>"+imgServices+"</ul></p></div>";} $("#divInnerHtml").append(strInnerHtml);});if(varLatFlag==0){clearMap();$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>There Is No Fuel Stations For Selected Amenities, Please Try Another Amenities!</span>");} if(!firstLatlng){if(varService==25){$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>Please Select a Amenitiy</span>");}else{$("#divInnerHtml").empty();clearMap();$("#divInnerHtml").append("<span class='errormsg'>There Is No Fuel Stations For Selected Amenities, Please Try Another Amenities!</span>");}} map.setCenter(firstLatlng);}else if(varCategory=="office"){if(!($('#ddlOffice').val()=="none")){if(!($('#ddlOffice').val()=="noofficefound")){var obj=JSON.stringify(response.d);var json=$.parseJSON(obj);var firstLatlng;map=new google.maps.Map(document.getElementById('dvMap'),mapOptionsTemp);$.each(json,function(index,loc){var ltlng=[];var State=loc.State;var City=loc.City;var Office=loc.Office;var Address=loc.Address;var ContactNo=loc.ContactNo;var strLat=loc.Latitude;var strLag=loc.Longitude;var SpaccImage=loc.strSpaccImage;var price="Price";ltlng.push(new google.maps.LatLng(strLat,strLag));var imgs=new Array();for(i=0;i<testArray.length;i++){imgs.push("/images/locate_us/smallmap1/"+testArray[i]);} var imgServices="";var imgFlag=0;if(!firstLatlng){firstLatlng=ltlng[0];lastLatLong=firstLatlng;} for(var i=0;i<=ltlng.length;i++){marker=new google.maps.Marker({map:map,position:ltlng[i],animation:google.maps.Animation.Animate,icon:"/images/location_icon.png"});markers.push(marker);flag1=1;(function(i,marker){google.maps.event.addListener(marker,'click',function(){if(!infowindow){infowindow=new google.maps.InfoWindow();} var desc='<div class="map-content" style="display:block;">'+'<div class="location">'+'<div class="left">'+'<img src="../../images/locate_us/locate-img.jpg" alt="Location Image">'+'</div>'+'<div class="right">'+'<h2>'+Office+'</h2>'+'<p>'+Address+',&nbsp;'+City+'<br>'+State+'&nbsp;'+'<p> Contact No :'+ContactNo+'</p>'+'</div>'+'</div>'+'</div>';infowindow.setContent(desc);infowindow.open(map,marker);});})(i,marker);if(ContactNo.length>0){var strInnerHtml="<div id='mapfrm' class='map-s-frm'><h2>"+Office+"</h2>" +"<p>"+Address+"<br>" +"<p>"+City+"</p>" +"<p>"+State+"</p>" +"<p> Contact No :"+ContactNo+"</p></div>";}else{var strInnerHtml="<div id='mapfrm' class='map-s-frm'><h2>"+Office+"</h2>" +"<p>"+Address+"<br>" +"<p>"+City+"</p>" +"<p>"+State+"</p></div>";}} $("#divInnerHtml").append(strInnerHtml);});if(!firstLatlng){$("#divInnerHtml").empty();clearMap();$("#divInnerHtml").append("<span class='errormsg'>There Is No Office Available For Selected City</span>");} map.setCenter(firstLatlng);}else{$("#divInnerHtml").empty();clearMap();$("#divInnerHtml").append("<span class='errormsg'>There Is No Office Available For Selected City</span>");}}else{$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>Please Select Office Type</span>");}}else{var obj=JSON.stringify(response.d);var json=$.parseJSON(obj);var firstLatlng;map=new google.maps.Map(document.getElementById('dvMap'),mapOptionsTemp);$.each(json,function(index,loc){var ltlng=[];var State=loc.instState;var City=loc.instCity;var Type=loc.instType;var Address=loc.instAddress;var strLat=parseFloat(loc.instLatitude);var strLag=parseFloat(loc.instLongitude);var price="Price";ltlng.push(new google.maps.LatLng(strLat,strLag));if(!firstLatlng){firstLatlng=ltlng[0];lastLatLong=firstLatlng;} for(var i=0;i<=ltlng.length;i++){marker=new google.maps.Marker({map:map,position:ltlng[i],animation:google.maps.Animation.Animate,icon:"/images/location_icon.png"});markers.push(marker);flag1=1;(function(i,marker){google.maps.event.addListener(marker,'click',function(){if(!infowindow){infowindow=new google.maps.InfoWindow();} var desc;if($('#ddlCategory').val()=="Installation"||$('#ddlCategory').val()=="TOP"||$('#ddlCategory').val()=="Depot"||$('#ddlCategory').val()=="Despatch Unit"||$('#ddlCategory').val()=="Terminal") {desc='<div class="map-content" style="display:block;">'+'<div class="location">'+'<div class="left">'+'<img src="https://www.bharatpetroleum.com/images/locate_us/installation-image.png" alt="Location Image">'+'</div>'+'<div class="right">'+'<p>'+Address+',&nbsp;'+City+'<br>'+State+'&nbsp;'+'</p>'+'</div>'+'</div>'+'</div>';} else {desc='<div class="map-content" style="display:block;">'+'<div class="location">'+'<div class="left">'+'<img src="../../images/locate_us/locate-img.jpg" alt="Location Image">'+'</div>'+'<div class="right">'+'<p>'+Address+',&nbsp;'+City+'<br>'+State+'&nbsp;'+'</p>'+'</div>'+'</div>'+'</div>';} infowindow.setContent(desc);infowindow.open(map,marker);});})(i,marker);var strInnerHtml="<div id='mapfrm' class='map-s-frm'>" +"<p>"+Address+"<br>" +"<p>"+City+"</p>" +"<p>"+State+"</p></div>";} $("#divInnerHtml").append(strInnerHtml);});if(!firstLatlng){$("#divInnerHtml").empty();clearMap();$("#divInnerHtml").append("<span class='errormsg'>There Is No Data Available For Selected City</span>");} map.setCenter(firstLatlng);}},error:function(e){$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>No Data Found</span>");}});}else{$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>Please Select a City</span>");}}else{$("#divInnerHtml").empty();$("#divInnerHtml").append("<span class='errormsg'>Please Select a State</span>");}});});</script> <div class="container-fluid locate-us-div"><div class="container"><h2><span class="img_title"><img src="https://www.bharatpetroleum.com/images/icon_global.png" alt="Location">Bharat Petroleum Location Map</span></h2><div class="row"><div class="col-sm-8 map-div"><div id="dvMap"></div><div id="imageDiv"></div></div><div class="col-sm-4 map-filter"> <span id="lblLanguage" style="display:none">English</span><p>Locate Bharat Petroleum near you</p><div class="filter clearfix"> <select name="ddlCategory" id="ddlCategory">
	<option selected="selected" value="none">Select Option</option>
	<option value="Installation">Installation</option>
	<option value="TOP">TOP</option>
	<option value="Depot">Depot</option>
	<option value="Despatch Unit">Dispatch Units</option>
	<option value="Terminal">Terminals</option>
	<option value="office">Office</option>
	<option value="fulestation">Fuel Station</option>

</select> <select name="ddlState" id="ddlState">
	<option value="none">--Select State--</option>

</select> <select name="ddlCity" id="ddlCity">
	<option value="none">--Select District/City--</option>

</select>  <select name="ddlOffice" id="ddlOffice">
	<option value="none">Select Office Type</option>

</select> <select name="ddlRetailsOutlets" id="ddlRetailsOutlets" style="display:none">
	<option selected="selected" value="25">Select Amenities</option>
	<option value="24">All</option>
	<option value="1">PFS</option>
	<option value="0">Petrocard, Fleetcard</option>
	<option value="26">Platinum</option>
	<option value="2">Automation</option>
	<option value="3">Speed</option>
	<option value="4">In &amp; out</option>
	<option value="5">Atm</option>
	<option value="7">CNG</option>
	<option value="8">LPG</option>
	<option value="9">Parking</option>
	<option value="10">Smart fleet customer care centre</option>
	<option value="11">Vehicle service center</option>
	<option value="12">Dhaba</option>
	<option value="13">Dormitory</option>
	<option value="14">Bath</option>
	<option value="15">laundry</option>
	<option value="16">Cooking</option>
	<option value="17">Emergency</option>
	<option value="18">Cut on divider</option>

</select> <input Class="loc-search" type="button" value="Search" id="btnSubmit" /></div><div style="position:relative;"><div class="map_search_item scrollbar" ><div id="divInnerHtml" ></div> <span id="lblMessageDisplay" class="errormsg"></span></div></div></div></div></div></div>
<script>var testArray = new Array();testArray.push('aminites-icon01_petro_card.jpg');testArray.push('aminites-icon02_pure_for_sure.jpg');testArray.push('aminites-icon03_automation.jpg');testArray.push('aminites-icon04_speed.jpg');testArray.push('aminites-icon05_in_out.jpg');testArray.push('aminites-icon06_atm.jpg');testArray.push('aminites-icon07_toilet.jpg');testArray.push('aminites-icon08_cng.jpg');testArray.push('aminites-icon09_lpg.jpg');testArray.push('aminites-icon10_parking.jpg');testArray.push('aminites-icon11_customer_care_smart_fleet.jpg');testArray.push('aminites-icon12_vehicle_service_centre.jpg');testArray.push('aminites-icon13_dhaba.jpg');testArray.push('aminites-icon14_ghar.jpg');testArray.push('aminites-icon15_shower.jpg');testArray.push('aminites-icon16_laundary.jpg');testArray.push('aminites-icon17_cooking.jpg');testArray.push('aminites-icon18_emergency.jpg');testArray.push('aminites-icon19_cutondividar.jpg');testArray.push('aminites-icon20_water.jpg');testArray.push('aminites-icon21_identity_card.jpg');</script></form> <script src="../../js/enscroll-0.6.1.min.js" type="text/javascript"></script> <script>$(document).ready(function(){$('.scrollbar').enscroll({verticalTrackClass:'track3',verticalHandleClass:'handle3'});});</script> </body></html>