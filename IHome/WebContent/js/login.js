
function btsubmit() {
	var name = $("#name").val();
	var passport = $("#passport").val();
	if(name == "" || name == null || passport == "" || passport == null) {
		alert("用户名或密码不能为空");
		return;
	}
	$.ajax({
		url:"log/login.do",
		type:"post",
		data:{name:name,passport:passport},
		success:function(res){
			if(res == 1) {
				window.location.href="index.jsp";
				return;
			}else {
				alert("用户名或密码不存在");
			}
		},
		error:function(){
			alert("系统异常，稍后再试");
		}
	});

}