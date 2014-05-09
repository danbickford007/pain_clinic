$(document).ready(function(){
	$("#alcohol_input").change(function() {
		if (this.checked){
			$('#alcohol_chg').show();
		} else {
			$('#alcohol_chg').hide();
		}

});
});
	




$("#smoke").click(function() {
$("#smoking").toggle();
};
