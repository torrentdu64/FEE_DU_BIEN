/*
Author       : Syed Ekram.
Template Name: Monalisa - Health & Beauty HTML Template
Version      : 1.0
*/

(function($) {
  'use strict';

  jQuery(document).ready(function(){

    /*PRELOADER JS*/
    $(window).load(function() {
      $('.status').fadeOut();
      $('.preloader').delay(350).fadeOut('slow');
    });
    /*END PRELOADER JS*/

    /*START MENU JS*/
        $('a.page-scroll').on('click', function(e){
          var anchor = $(this);
          $('html, body').stop().animate({
            scrollTop: $(anchor.attr('href')).offset().top - 50
          }, 1500);
          e.preventDefault();
        });

      $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
        $('.menu-top').addClass('menu-shrink');
        } else {
        $('.menu-top').removeClass('menu-shrink');
        }
      });

      $(document).on('click','.navbar-collapse.in',function(e) {
      if( $(e.target).is('a') && $(e.target).attr('class') != 'dropdown-toggle' ) {
        $(this).collapse('hide');
      }
      });
    /*END MENU JS*/

    /*START MIXITUP JS*/
    $("a[class^='prettyPhoto']").prettyPhoto();
    /*END MIXITUP JS*/

    /*START TESTIMONIAL JS*/
      $(window).load(function () {
        $('.testi-slider').flexslider({
          animation: "slide",
          direction: "fade",
          prevText: "<i class='fa fa-long-arrow-left'></i>",
          nextText: "<i class='fa fa-long-arrow-right'></i>"
        });
      });
    /*END TESTIMONIAL JS*/

    /*START VIDEO JS*/
     function autoPlayYouTubeModal() {
      var trigger = $("body").find('[data-toggle="modal"]');
      trigger.on("click",function() {
        var theModal = $(this).data("target"),
        videoSRC = $('#video-modal iframe').attr('src'),
        videoSRCauto = videoSRC + "?autoplay=1";
        $(theModal + ' iframe').attr('src', videoSRCauto);
        $(theModal + ' button.close').on("click",function() {
        $(theModal + ' iframe').attr('src', videoSRC);
        });
        $('.modal').on("click",function() {
        $(theModal + ' iframe').attr('src', videoSRC);
        });
      });
      }
      autoPlayYouTubeModal();
    /*END VIDEO JS*/

    /* COUNTDOWN JS */
    $('#counter_item').bind('inview', function(event, visible, visiblePartX, visiblePartY) {
        if (visible) {
          $(this).find('.time_counter').each(function () {
            var $this = $(this);
            $({ Counter: 0 }).animate({ Counter: $this.text() }, {
              duration: 2000,
              easing: 'swing',
              step: function () {
                $this.text(Math.ceil(this.Counter));
              }
            });
          });
          $(this).unbind('inview');
        }
      });
    /* END COUNTDOWN JS */

    /*START PARTNER LOGO*/
    $('.partner').owlCarousel({
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 4,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3]
    });
    /*END PARTNER LOGO*/

    /*START TESTIMONIAL JS*/
    $('.carousel').carousel({
      interval:5000,
      pause:'false',
    });
    /*END TESTIMONIAL JS*/

    /*START CONTACT MAP JS*/
    function initialize() {
      var mapOptions = {
      zoom: 15,
      scrollwheel: false,
      center: new google.maps.LatLng(40.7127837, -74.00594130000002)
      };
      var map = new google.maps.Map(document.getElementById('map'),
        mapOptions);
      var marker = new google.maps.Marker({
      position: map.getCenter(),
      icon: 'assets/img/map_pin.png',
      map: map
      });
    }
    google.maps.event.addDomListener(window, 'load', initialize);
     /*END CONTACT MAP JS*/

  });

  /*START WOW ANIMATION JS*/
    new WOW().init();
  /*END WOW ANIMATION JS*/

})(jQuery);
