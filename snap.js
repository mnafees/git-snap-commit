// snap.js
// This file is part of the git-snap-commit project
// 
// Copyright 2017 Mohammed Nafees, hello <at> mnafees <dot> me

var system = require('system');
var page = require('webpage').create();
page.viewportSize = { width: 1024, height: 768 };
page.open('file://' + system.args[1], function() {
  page.render('snap-' + system.args[2] + '.png');
  phantom.exit();
});