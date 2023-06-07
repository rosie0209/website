window.onload=async function(){
    addListener();
  
    setItem(items[tmp]);
    //setItem(itemObj[urlParams.get('id')]);
    //console.log('onload結束')
    //setItem(items[urlParams.get('id')]);
}
function addListener() {
    let num = document.getElementById("num");
    document.getElementById("up").addEventListener("click", function() {
        num.value = parseInt(num.value)+1;
    });
    document.getElementById("down").addEventListener("click", function() {
        if(num.value <= 0) {
            num.value = 0;
        }else {
            num.value = parseInt(num.value)-1;
        }
    });
}