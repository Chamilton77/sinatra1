$(document).ready(function(){
	var d1 = "This computer can be fully customized to meet your needs. With up to an Intel core i3 6100 this computer makes for a excellent work station for students. This lighter load pc come equipped with a GTX 1050 ti to handle lower end gaming and packs enough power to run photoshop no problem"
	var d2 = "This lower mid range computer is perfect for people who want to get a foot in the door with gaming computers. It comes with a GTX 1060 3gb model and a core i5 cpu."
	var d3 = "This mid level PC is an amazing all around value with a GTX 1070 and a core i5 6600k this computer can tack anyting you throw at it. Game with no problems up to 1440p or slap a vr headset on it to take advantage of 10th generation graphics!"
	var d4 = "This high end PC is geared towards extreme gamer and computer engineers! With an overclocked core i7 and a gtx 1080 this beast can smash anything you throw at it from hardcore redering software to AAA games at 4K."
	var d5 = "This enthusiast level build will blow your socks off! Equipped with a full custom water cooling loop this tank comes equipped with a GTX Titan and core i7 6950X."
	var d6 = "This is the pinacle of what we offer here at HAMILTRON PC's! This hardline custom water cooled monster comes with 2 GTX titan X's a core i7 6950X and 128 gigs of ram. There is abosulutely nothing this computer can't handle!"
// these add event listeners to pictures that change the text after they are clicked
	$('#picture1').click(function(){
		$('#changetxt').text(d2)
	});
	$('#picture2').click(function(){
		$('#changetxt').text(d1)
	});
	$('#picture3').click(function(){
		$('#changetxt').text(d3)
	});
	$('#picture4').click(function(){
		$('#changetxt').text(d4)
	});
	$('#picture5').click(function(){
		$('#changetxt').text(d5)
	});
	$('#picture6').click(function(){
		$('#changetxt').text(d6)
	});
});