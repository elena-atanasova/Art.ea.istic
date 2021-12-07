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
//= require bootstrap-sprockets
//= require jquery3
//= require jquery_ujs
//= require jquery.validate
//= require activestorage
//= require turbolinks
//= require_tree .

function ValidateArtworkForm()
{
  $('#ArtworkForm').validate({
    rules: {
      'artwork[name]': {required: true},
      'artwork[artist]': {required: true},
      'artwork[year]': {
        required: true,
        digits: true,
        range: [0, 2021],
      },
      'artwork[description]': {
        required: true,
      }
    },
    messages: {
      'artwork[name]': {required: "You must enter the artwork's name",},
      'artwork[artist]': {required: "You must enter the artworks's artist",},
      'artwork[year]': {
        required: "The artwork's year of creation is required",
        digits: "The year should be a number between 0 and 2021",
        range: "The year should be a number between 0 and 2021",
      },
      'artwork[description]': {
        required: "You must enter a description of the artwork",},
    }
  });
}

function ValidateExhibitionForm()
{
  $('#ExhibitionForm').validate({
    rules: {
      'exhibition[artwork]': {required: true},
      'exhibition[venue]': {required: true},
    },

    messages: {
      'exhibition[artwork]': {required: "You must enter the name of the artwork to be exhibited",},
      'exhibition[venue]': {required: "You must enter the exhibition's venue",},
  });
}

function ValidateReviewForm()
{
  $('#ReviewForm').validate({
    rules: {
      'review[artwork]': {required: true},
      'review[review]': {required: true},
    },

    messages: {
      'review[artwork]': {required: "You must enter the name of the artwork to be reviewed",},
      'review[review]': {required: "You must enter the artwork's review",},
  });
}

$(document).ready(function() {

  if(document.getElementById('ArtworkForm'))
  {
    ValidateArtworkForm();
  }

  if(document.getElementById('ExhibitionForm'))
  {
    ValidateExhibitionForm();
  }

  if(document.getElementById('ReviewForm'))
  {
    ValidateReviewForm();
  }

});
