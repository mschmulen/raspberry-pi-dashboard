/*
 * GET home page.
 */

function index(req, res){
  
  //process.env.PORT, process.env.IP
  
  res.render('index', { title: 'dashboard-server', ipaddress:'1.1.1.1', port: 333 });
}

/**
 * Set up routes
 */
 
module.exports = function(app, options) {
  app.get('/', index);
  
  
};
