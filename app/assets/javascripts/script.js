$(document).ready(function() {
    var currentURL = document.location.href;
    $('li.dropdown.active').removeClass('active');
    activeLinks = $('li.dropdown a').filter(function () {
    return this.href === currentURL;
    }).closest('li.dropdown').addClass('active');

    console.log( "ready!" );
});

