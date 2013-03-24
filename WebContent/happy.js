//console.log("main.js is loaded");

$(document).ready(function(){

	$("img").click(function(){
		$("img").hide();
		$("#fbshare").show();
		$("#ione").show("slow");
		$("#bone").hide();
		$("#leftIncr").show();
		$("#rightIncr").show();
		

	});
	
/*	$("#video").click(function(){
		$("#happy_video").show("slow");
	});*/
/*	either single or double click
	$("img").on("dbclick",function(){
		$("img").fadeout();
	});*/

	$("#bone").on("click",function(){
		$("img").hide();
		$("#fbshare").show();
		$("#bone").hide();
		$("#ione").show("slow");
		$("#leftIncr").show();
		$("#rightIncr").show();
		
	});
	
/*	either single or double click
	$("#bone").on("dblclick",function(){
		$("img").hide();
	});*/
/*
	$("#btwo").on("click",function(){
		$("img").hide();
	});*/
/*	either single or double click
	$("#btwo").on("dblclick",function(){
		$("img").hide();
	});*/

	/*$("li").on("click",function(){

	if($(this).hasClass("done")){
		$(this).removeClass("done");
	}else {
		$(this).addClass("done");
	}
	
	});*/

});