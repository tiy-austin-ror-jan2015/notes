$(document).ready(function () {
  var commands_count = $('#commands').data('count');
  var commands = $('.commands');
  commands.scrollTop(commands.prop('scrollHeight'));
  setInterval(function () {
    $.getJSON('/sessions/' + $('#title').data('slug') + '/commands', function (data) {
      if (data.length > commands_count) {
        commands.append($(
          '<li class="appear">&nbsp;<pre><code>' + data[data.length - 1]['name'] + '</code></pre></li>'
        ));
        commands.scrollTop(commands.prop('scrollHeight'));
        commands_count = data.length;
      }
    });
  }, 1000);
});

