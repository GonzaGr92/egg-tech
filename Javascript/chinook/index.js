$(document).ready(function() {
    var colors = ['red','pink','purple','deep-purple','indigo','blue','light-blue','cyan','teal', 'green'];

    function writeArtists(artists) {
        for (const artist of artists) {
            var colorIdx = parseInt(artist.ArtistId) % 10;

            var template = `
                <div class="col s12 m3 artist">
                    <div class="card-panel ${colors[colorIdx]} lighten-1">
                        <h4 class="white-text">${artist.Name}</h3>
                    </div>
                </div>
            `;
            

            $('#artist_context').append(template);
        }
    }

    $.ajax({
        url: 'https://IdioticImpartialOrders.gonzalograssi1.repl.co/artists',
        method: 'GET',
        dataType: 'JSON',
        success: function(data) {
            writeArtists(data);
        },
        error: function(err) {
            console.log(err);
        }
    });


});