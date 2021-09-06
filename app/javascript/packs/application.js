// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'
import 'bootstrap'
import 'cocoon';

Rails.start()
Turbolinks.start()
ActiveStorage.start()
require('jquery')

// $(document).ready(function () {
//   $('#task_name').on("change", function () {
//     let a = $(this).val();
//     $('#text_name').val(a)
//   });

//   $('#pr_link').on("change", function () {
//     let a = $(this).val();
//     $('#text_pr').val(a)
//   });

//   $('#time').on("change", function () {
//     let a = $(this).val();
//     $('#text_hours').val(a)
//   });
// });

// tasks = 

var container = $('#my-container'),
table = $('<table>');

tasks.forEach(function(user) {
  var tr = $('<tr>');
  ['Task', 'PR', 'Hours'].forEach(function(attr) {
    tr.append('<td>' + tasks[attr] + '</td>');
  });
  table.append(tr);
});

container.append(table);