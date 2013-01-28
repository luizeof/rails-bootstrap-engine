$(document).ready(function(){

    $('textarea').autosize();
    
    $("div.alert").delay(3000).hide(500);  
    
    $('*[rel="tooltip"]').tooltip();
    
    $('*[rel="hover-popover"]').popover({trigger: "hover", placement: "top", html: true});
	
    $('.search-form').submit(function() {
    	var current_form = $(this).attr("id");
        $('form .btn.active').each(function() {
             var input = document.createElement("input");
             input.setAttribute("type", "hidden");
             input.setAttribute("name", this.name);
             input.setAttribute("value", this.value);
             document.getElementById(current_form).appendChild(input);
         });
    });	
	

});  