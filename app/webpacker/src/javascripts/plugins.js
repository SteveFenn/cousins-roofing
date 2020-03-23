// Avoid `console` errors in browsers that lack a console.
(function() {
  var method;
  var noop = function () {};
  var methods = [
    'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
    'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
    'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
    'timeline', 'timelineEnd', 'timeStamp', 'trace', 'warn'
  ];
  var length = methods.length;
  var console = (window.console = window.console || {});

  while (length--) {
    method = methods[length];

    // Only stub undefined methods.
    if (!console[method]) {
      console[method] = noop;
    }
  }
}());

// Slick
(function() {
  $('.slick-slider').slick({
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: false,
    dots: false,
    speed: 1000,
    swipeToSlide: true
  });

  $('.quotes').slick({
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: false,
    dots: false,
    speed: 1000,
    fade: true,
    cssEase: 'linear'
  });
  $(".mobile-menu").click(function(e) {
    e.preventDefault();
    $(".navigation").toggleClass("mobile-open");
  });
  $(".mobile-close").click(function(e) {
    e.preventDefault();
    $(".navigation").toggleClass("mobile-open");
  });
}());


