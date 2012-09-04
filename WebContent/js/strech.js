document.write('<script type="text/javascript">');
function closeShutManager(oTargetObj){
var targetObj =document.getElementById('newyear');
targetObj.style.display="none";
}
setTimeout("closeShutManager()",40000);
document.write('</script>');
document.write('<div id="newyear">');
document.write('<div id="close"><a href="#"  onclick="closeShutManager()"><img src="/images/close.jpg" /></a></div>');
document.write('</div>');