$(document).ready(function() {
    $('#button').click(function() {
        var rand = parseInt(Math.random() * 5); 
        var colors = ['blue', 'red', 'green', 'yellow', 'black', 'gray']
        $('#cuadrado').css('background-color', colors[rand]);
    });

    $('#toggle').click(function() {
        $('#cuadrado').toggle(1500);
    })
});

var button = document.getElementById('button');
button.addEventListener('click', function(){
    //alert('Clickeed!');
});