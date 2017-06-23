function page_bgcolor_move(num){
    for (var i = 1; i < 9; i++) {
    if(num==i){
    document.getElementById("page_"+i).style.backgroundColor="#31C27C";
    document.getElementById("page_"+i).style.border="1px solid #31C27C";
    document.getElementById("page_1_"+i).style.color="#FFFFFF";
       }
   }
}


function page_bgcolor_out(num){
     for (var i = 1; i < 9; i++) {
    if(num==i){
    document.getElementById("page_"+i).style.backgroundColor="#F4F3F3";
        document.getElementById("page_"+i).style.border="1px solid #9A9595";
    document.getElementById("page_1_"+i).style.color="#807E7E";
   }
}
}
window.onload = function(){
  var imgs = document.getElementsByTagName("img");
  for(var i=0;i<imgs.length;i++){
    if(imgs[i].src.indexOf("/attached/image/")>0){
          imgs[i].width="60";
          imgs[i].height="60";
          console.log(imgs[i]);
    }
  }
}