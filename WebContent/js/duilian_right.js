var ad_float_right_src = '/duilian/duilian20120511.jpg';//图片地址
var ad_float_right_url = 'http://218.65.14.14/yysxc/yysxc.html';//链接地址
var ad_float_right_type = "";

document.ie = navigator.appName == "Microsoft Internet Explorer"
document.ns = navigator.appName == "Netscape"

if(document.ie){
var imgheight_close

var imgright

window.screen.width>1000 ? imgheight_close='650':imgheight_close='600'

window.screen.width>1000 ? imgright=2:imgright=2

function myloadr()

{

myright.style.top=document.documentElement.scrollTop+document.documentElement.offsetHeight-imgheight_close;

myright.style.right=imgright;

rightmove();

}

function rightmove()

 { 

 myright.style.top=document.documentElement.scrollTop+document.documentElement.offsetHeight-imgheight_close;

 myright.style.right=imgright;

 setTimeout("rightmove();",80)

 }



function MM_reloadPage(init) {  //reloads the window if Nav4 resized

  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {

    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}

  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();

}

MM_reloadPage(true)



function close_float_right(){

	myright.style.visibility='hidden';

//myleft.style.visibility='hidden';

}



document.write("<div id=myright style='position: absolute;width:" + '70'+";top:"+'580'+";right:5;visibility: visible;z-index: 1'>"

+"<table border=0 cellpadding=1 cellspacing=1 bgcolor='#666666'><tr><td>");





if(ad_float_right_type!="swf")

	document.write("<a href='" + ad_float_right_url + "' target = '_blank'><img src='" + ad_float_right_src + "' border = 0 width='70' height='580'></a>");

else

	document.write("<EMBED src='" + ad_float_right_src + "' quality=high  WIDTH=50 HEIGHT=80 TYPE='application/x-shockwave-flash' id=changhongout ></EMBED>");



document.write("</td></tr><tr><td width='70' height=20 align=center bgcolor='#FFffff'><a href='javascript:close_float_right();void(0);' class='hui'><b>关闭</b></a></td></tr>"

+"</table>"

+"</div>");



myloadr()

}

else

{

	true;

}