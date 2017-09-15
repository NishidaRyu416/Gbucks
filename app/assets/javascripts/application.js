// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require journal/loader
//= require journal/bootswatch
//= require jquery.raty.js
$(function () {
    $('#star').raty({
        size     : 36,
        starOff: '/assets/star-off-6aaeebdaab93d594c005d366ce0d94fba02e7a07fd03557dbee8482f04a91c22.png',
        starOn : '/assets/star-on-fd26bf0ea0990cfd808f7540f958eed324b86fc609bf56ec2b3a5612cdfde5f5.png',
        scoreName: 'review[stars]',
    });
});
