/*
 * GET home page.
 */


var os=require('os');

///http://nodejs.org/api/os.html#os_os_networkinterfaces 

function index(req, res){
  
  //process.env.PORT, process.env.IP
  var ifaces=os.networkInterfaces();
  var IPv4;
  
  for (var dev in ifaces) {
    var alias=0;
	
	var d = ifaces[dev];
	
	console.log ( d[0].address );
	console.log ( d[0].family );
	console.log ( d[1].address );
	console.log ( d[1].family );
	
    ifaces[dev].forEach(function(details){
      if (details.family=='IPv4') {
		  IPv4 = details;
        console.log(dev+(alias?':'+alias:''),details.address);
        ++alias;
      }
    });
  }
  
  res.render('index', { title: 'dashboard-server', networkInterfaces:ifaces, IPv4Interface:IPv4, ipaddress:'1.1.1.1', port: 333 });
}

/**
 * Set up routes
 */
 
module.exports = function(app, options) {
  app.get('/', index);
  
  
};
