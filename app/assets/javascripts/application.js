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
//= require jquery-ui
//= require_tree .


//スクロールによって下のフォームが出現する機能
$(document).ready(function() {
  $(".characters").not(':animated').hover(function() {
    $(this)
      .stop(true, true)
      .animate({ top: "3px" }, 80).animate({ top: "10px" }, 150) // first jump
      .animate({ top: "8px" }, 80).animate({ top: "13px" }, 150) // second jump
      .animate({ top: "13px" }, 80).animate({ top: "20px" }, 150) // the last jump
  });
});

//画像を添付したときに表示させる機能
$(function() {
  var path = location.pathname　 //パスの取得
  if (path == "/lessons/new") {
    var setFileInput = $('.about-picture'),
      setFileImg = $('.new-picture');
  } else if (path == "/users/edit") {
    var setFileInput = $('.header'),
      setFileImg = $('.user-header');
  }

  setFileInput.each(function() {
    var selfFile = $(this),
      selfInput = $(this).find('input[type=file]'),
      prevElm = selfFile.find(setFileImg),
      orgPass = prevElm.attr('src');

    selfInput.change(function() {
      var file = $(this).prop('files')[0],
        fileRdr = new FileReader();

      if (!this.files.length) {
        prevElm.attr('src', orgPass);
        return;
      } else {
        if (!file.type.match('image.*')) {
          prevElm.attr('src', orgPass);
          return;
        } else {
          fileRdr.onload = function() {
            prevElm.attr('src', fileRdr.result);
          }
          fileRdr.readAsDataURL(file);
        }
      }
    });
  });
});

$(function() {
  var setFileInput = $('.user-edit-main-content'),
    setFileImg = $('.about-user-show');

  setFileInput.each(function() {
    var selfFile = $(this),
      selfInput = $(this).find('input[name="image"]'),
      prevElm = selfFile.find(setFileImg),
      orgPass = prevElm.attr('src');

    selfInput.change(function() {
      var file = $(this).prop('files')[0],
        fileRdr = new FileReader();

      if (!this.files.length) {
        prevElm.attr('src', orgPass);
        return;
      } else {
        if (!file.type.match('image.*')) {
          prevElm.attr('src', orgPass);
          return;
        } else {
          fileRdr.onload = function() {
            prevElm.attr('src', fileRdr.result);
          }
          fileRdr.readAsDataURL(file);
        }
      }
    });
  });
});


$(function() {
  var setFileInput = $('.ly-registration'),
    setFileImg = $('.brand-new-image');

  setFileInput.each(function() {
    var selfFile = $(this),
      selfInput = $(this).find('input[type=file]'),
      prevElm = selfFile.find(setFileImg),
      orgPass = prevElm.attr('src');

    selfInput.change(function() {
      var file = $(this).prop('files')[0],
        fileRdr = new FileReader();

      if (!this.files.length) {
        prevElm.attr('src', orgPass);
        return;
      } else {
        if (!file.type.match('image.*')) {
          prevElm.attr('src', orgPass);
          return;
        } else {
          fileRdr.onload = function() {
            prevElm.attr('src', fileRdr.result);
          }
          fileRdr.readAsDataURL(file);
        }
      }
    });
  });
});

$(function() {
    $('#tag-input').tagit();
});