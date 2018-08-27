$('.lmlblog-no-like').click(function(){
	alert("11");
	alert(this.val());
	
})
function dianzan(a){
	var topicid=a.value;
	var data={thistopicid:topicid};
	//alert(topicid);
	//var sss=$(this).innerHTML;
	//alert(sss);
	//ss=$('li[value='+topicid+'] span').text('5');
	//alert(ss);
	//a.span.innerHTML="20";
	$.post("dianzan.do",data,function(data){			
			//var obj=$.toJSON(data);			
			var json =data.replace("IsAjax",""); // data的值是json字符串，这行把字符串转成object  
	       // alert(json);// 取出属性值testname
			
		//	alert(obj);
			$('li[value='+topicid+'] span').text(json);
			//a.span.innerHTML=obj.likeCount;
			//alert('ok');	
	});
}