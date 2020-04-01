/*
 * backTop - backTop.js
 * Copyright(c) 2014 gxmari007 <392041299@qq.com>
 * MIT Licensed
 */

(function($) {
  $.fn.backTop = function(options) {
    var settings = {
      showHeight: 300, //显示backTop的高度(px)
      speed: 300,      //返回顶部速度(ms)
      showSpeed: 100,  //返回顶部按钮显示隐藏速度(ms)
    };

    $.extend(settings, options);

    var $window = $(window);
    return this.each(function(index) {
      var $element = $(this);

      //初始化隐藏 backTop
      $element.hide();

      //点击 backTop 返回顶部
      $element.click(function() {
        $('html, body').animate({scrollTop: '0px'}, settings.speed);
      });

      //backTop 随窗口垂直滚动条显示或隐藏
      $window.scroll(function() {
        var scrollTop = $window.scrollTop();
        var showSpeed = settings.showSpeed;
        if (scrollTop < settings.showHeight) {
          if (showSpeed > 0) {
            $element.stop().fadeOut(showSpeed);
          } else {
            $element.hide();
          }
        } else {
          if (showSpeed > 0) {
            $element.stop().fadeIn(showSpeed);
          } else {
            $element.show();
          }
        }
      });

      //初始化触发窗口 scroll 事件
      $window.scroll();
    });
  };
})(jQuery);