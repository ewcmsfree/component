var ad_float_left_src = '/duilian/duilian20120511.jpg';//图片地址

var ad_float_left_url = 'http://218.65.14.14/yysxc/yysxc.html';//链接地址

var ad_float_left_type = "";

document.ie = navigator.appName == "Microsoft Internet Explorer"

document.ns = navigator.appName == "Netscape"







if(document.ie){



var imgheight_close

var imgleft

window.screen.width>1000 ? imgheight_close='650':imgheight_close='600'

window.screen.width>1000 ? imgleft=2:imgleft=2

function myloadl()

{

myleft.style.top=document.documentElement.scrollTop+document.documentElement.offsetHeight-imgheight_close;

myleft.style.left=imgleft;

leftmove();

}

function leftmove()

 { 

 myleft.style.top=document.documentElement.scrollTop+document.documentElement.offsetHeight-imgheight_close;

 myleft.style.left=imgleft;

 setTimeout("leftmove();",80)

 }



function MM_reloadPage(init) {  //reloads the window if Nav4 resized

  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {

    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}

  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();

}

MM_reloadPage(true)



function close_float_left(){

	//myright.style.visibility='hidden';

myleft.style.visibility='hidden';

}



document.write("<div id=myleft style='position: absolute;width:" + '70'+";top:"+'600'+";left:5;visibility: visible;z-index: 1'>"

+"<table border=0 cellpadding=1 cellspacing=1 bgcolor='#999999'><tr><td>");





if(ad_float_left_type!="swf")

	document.write("<a href='" + ad_float_left_url + "' target = '_blank'><img src='" + ad_float_left_src + "' border = 0 width='70' height='580'></a>");

else

	document.write("<EMBED src='" + ad_float_left_src + "' quality=high  WIDTH=70 HEIGHT=320 TYPE='application/x-shockwave-flash' id=changhongout ></EMBED>");



document.write("</td></tr><tr><td width='70' height=20 align=center bgcolor='#ffffff'><a href='javascript:close_float_left();void(0);' class='hui'><b>关闭</b></a></td></tr>"

+"</table>"

+"</div>");



myloadl()

}

else

{

	true;

}