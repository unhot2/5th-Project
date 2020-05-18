function replyBoard(){
	$.ajax({
		url : "replyWrite",
		type : "GET",
		success : function(data){
			$(".replyBoard").html(data)
			showReply(data);
		}
	})
}

function showReply(String) {
	
}