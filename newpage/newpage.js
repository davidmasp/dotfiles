
function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  m = checkTime(m);
  s = checkTime(s);
  document.getElementById('clock').innerHTML =
  h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 500);
}
function checkTime(i) {
  if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}


function todayis(){
var m_names = new Array("Jan", "Feb", "Mar",
"Apr", "May", "Jun", "Jul", "Aug", "Sep",
"Oct", "Nov", "Dec");

var d = new Date();
var curr_date = d.getDate();
var curr_month = d.getMonth();
var curr_year = d.getFullYear();
document.getElementById('date').innerHTML = curr_date + "-" + m_names[curr_month] + "-" + curr_year;
}

function completeAndRedirect(){
  var query = document.forms[0].elements[0].value;
  if (query == "n") {
    location.href='https://www.netflix.com/browse';
  } else if (query == "t") {
    location.href='https://twitter.com';
  } else if (query.startsWith("d..")) {
    var a = query.split("..");
    var query = a[1]
    location.href='https://duckduckgo.com/?q='+query;
  } else if (query.startsWith("r..")) {
    var a = query.split("..");
    var query = a[1]
    location.href='https://www.reddit.com/r/'+query;
  } else {
    location.href='https://www.google.es/search?q='+query;
  }
}
