
/*
 NodeCoffeeScriptLab
 Programmers: David Pagels and Dillon Stenberg
 */

exports.index = function(req, res){
  res.render('index', { title: 'Express' });
};