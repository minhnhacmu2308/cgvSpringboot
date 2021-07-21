 function closeModel(){
    	  $('#exampleModaltest').modal('hide');
      }
	  function getSchedule(id){
	    	var nameID = "schedule" + id;
	    	$.ajax({
	    		  url: "/user/get-list-schedule",
	    		  type:"get",
	    		  data:{
	    			idFilm:id
	    		  },
	    		  success: function(data){
	    		
	    			  var row = document.getElementById(nameID);
	    			  var html = "<option selected value="+0+">Chọn lịch chiếu</option>"
	    			  html+=data;
            		  row.innerHTML = html;
	    		  }
	    		});
	    	
	    }
	  function getShowtime(id){
		  	var nameID = "schedule" + id;
			var nameIDShow = "showtime" + id;
		  	var idSchedule = document.getElementById(nameID).value;
	    	$.ajax({
	    		  url: "/user/get-list-show-time",
	    		  type:"get",
	    		  data:{
	    			  idSchedule:idSchedule 
	    		  },
	    		  success: function(data){
	    			  var row = document.getElementById(nameIDShow);
	    			  var html = "<option selected value="+0+">Chọn suất chiếu</option>"
	    			  html+=data;
          		  	   row.innerHTML = html;
	    		  }
	    		});
	    	
	    }
		  function getRoom(id){
				var nameID = "room" + id;
		    	$.ajax({
		    		  url: "/user/get-list-room",
		    		  type:"get",
		    		  success: function(data){
		    			  var row = document.getElementById(nameID);
		    			  var html = "<option selected value="+0+">Chọn phòng</option>"
		    			  html+=data;
	        		  	   row.innerHTML = html;
		    		  }
		    		});
		    	
		    }
		  function getSeat(id){
			  var nameIDSchedule = "schedule" + id;
			  var nameIDShowtime = "showtime" + id;
			  var nameIDRoom = "room" + id;
			  var idSchedule = document.getElementById(nameIDSchedule).value;
			  var idShowtime = document.getElementById(nameIDShowtime).value;
			  var idRoom = document.getElementById(nameIDRoom).value;
			  var nameID = "seat" + id;
		    	$.ajax({
		    		  url: "/user/get-list-seat",
		    		  type:"get",
		    		  data:{
		    			  idFilm:id,
		    			  idSchedule:idSchedule,
		    			  idShowtime:idShowtime,
		    			  idRoom:idRoom
		    		  },
		    		  success: function(data){
		    			  var row = document.getElementById(nameID);
		    			  var html = "<option selected value="+0+">Chọn ghế</option>"
		    			  html+=data;
	      		  	   row.innerHTML = html;
		    		  }
		    		});
		    	
		    }
		  function bookticket(idFilm){
			   var nameBtn = "btn-close" + idFilm;
			   var nameError = "resultError" + idFilm;
			   var nameIDmodel = "#exampleModa" + idFilm
			   var nameIdSchedule = "schedule" + idFilm;
			   var nameIdShowtime = "showtime" + idFilm;
			   var nameIdRoom = "room" + idFilm;
			   var nameIdSeat = "#seat" + idFilm
			   var idSchedule = document.getElementById(nameIdSchedule).value;
			   var idShowtime = document.getElementById(nameIdShowtime).value;
			   var idRoom = document.getElementById(nameIdRoom).value;
			   var idSeat = $(nameIdSeat).val();
				
		    	$.ajax({
		    		  url: "/user/bookticket",
		    		  type:"post",
		    		  data:{
		    			  idSchedule:idSchedule ,
		    			  idShowtime:idShowtime,
		    			  idRoom:idRoom,
		    			  idFilm:idFilm,
		    			  idSeat:JSON.stringify(idSeat)
		    		  },
		    		  success: function(data){
		    			  
		    			  var row = document.getElementById("result");
		    			  var row1 = document.getElementById(nameError);
		    			  var dataHTML = '';
		    			  if(data.status == "ErrorEmpty"){
		    				  row1.innerHTML=data.message
		    			  }else if(data.status == "Success"){
		    				  dataHTML+=data.message;
		    				  row.innerHTML = dataHTML;
		    				  document.getElementById(nameBtn).click();
		              		  $(document).ready(function(){
		              		    	 $('#exampleModaltest').modal('show');
		              		  });
		              		
		    			  }else if(data.status == "ErrorLogin"){
		    				  dataHTML+=data.message;
		    				  row.innerHTML = dataHTML;
			              		 
		    				  document.getElementById(nameBtn).click();
		              		  $(document).ready(function(){
		              		    	 $('#exampleModaltest').modal('show');
		              		  });
		              		
		    			  }
		    			 
		    		  }
		    		
		    		});
		    	
		    }