/*
 * GET home page.
 */


var os=require('os');

///http://nodejs.org/api/os.html#os_os_networkinterfaces 


function index(req, res){
  
  //process.env.PORT, process.env.IP
  var ifaces=os.networkInterfaces();
  
  var iPV4Interfaces = [];
  
  for (var dev in ifaces) {
    var alias=0;
	
    ifaces[dev].forEach(function(details){
      if (details.family=='IPv4') {
		  
		  var obj = {
		          address: details.address,
		          family: details.family,
				  name:dev
		      };
		  iPV4Interfaces.push(obj);
		  
          console.log(dev+(alias?':'+alias:''),details.address);
          ++alias;
      }
    });
  }//end for
  
  res.render('index', { title: 'dashboard-server', iPV4Interfaces:iPV4Interfaces });
}

function status(req, res){
  
  //process.env.PORT, process.env.IP
  var ifaces=os.networkInterfaces();
  
  var iPV4Interfaces = [];
  
  for (var dev in ifaces) {
    var alias=0;
	
    ifaces[dev].forEach(function(details){
      if (details.family=='IPv4') {
		  
		  var obj = {
		          address: details.address,
		          family: details.family,
				  name:dev
		      };
		  iPV4Interfaces.push(obj);
		  
          console.log(dev+(alias?':'+alias:''),details.address);
          ++alias;
      }
    });
  }//end for
  
  res.render('index', { title: 'dashboard-server', iPV4Interfaces:iPV4Interfaces });
}//end status

function dashboard(req, res){
	res.render('index', { title: 'dashboard-server', iPV4Interfaces:iPV4Interfaces });
}//end dashboard

function home(req, res){
  //process.env.PORT, process.env.IP
  var ifaces=os.networkInterfaces();
  
  var iPV4Interfaces = [];
  
  for (var dev in ifaces) {
    var alias=0;
	
    ifaces[dev].forEach(function(details){
      if (details.family=='IPv4') {
		  
		  var obj = {
		          address: details.address,
		          family: details.family,
				  name:dev
		      };
		  iPV4Interfaces.push(obj);
		  
          console.log(dev+(alias?':'+alias:''),details.address);
          ++alias;
      }
    });
  }//end for
  
  res.render('home', { title: 'dashboard-server', iPV4Interfaces:iPV4Interfaces });

}//end dashboard

// Set up routes
module.exports = function(app, options) {
  app.get('/', index);
	app.get('/status', status);
	app.get('/home', home);
};
