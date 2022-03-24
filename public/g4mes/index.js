function loadMario() {
  window.location.replace('../g4mescreen/supermario64.html');
}

function loadFireboyWatergirl() {
    window.location.replace('../g4mescreen/fbwg.html');
}

function loadQT() {
    window.location.replace('../g4mescreen/qt.html');
}

function loadFNF() {
    window.location.replace('../g4mescreen/fnf.html');
}

function loadRoblox() {
    window.location.replace('../g4mescreen/roblox.html');
}

function load1v1() {
    window.location.replace('../g4mescreen/1v1.html');
}
function showTime(){
    var date = new Date();
    var h = date.getHours(); // 0 - 23
    var m = date.getMinutes(); // 0 - 59
    var s = date.getSeconds(); // 0 - 59
    var session = "AM";
    
    if(h == 0){
        h = 12;
    }
    
    if(h > 12){
        h = h - 12;
        session = "PM";
    }
    
    h = (h < 10) ? "0" + h : h;
    m = (m < 10) ? "0" + m : m;
    s = (s < 10) ? "0" + s : s;
    
    var time = h + ":" + m + ":" + s + " " + session;
    document.getElementById("MyClockDisplay").innerText = time;
    document.getElementById("MyClockDisplay").textContent = time;
    
    setTimeout(showTime, 1000);
}