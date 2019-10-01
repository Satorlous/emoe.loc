$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

$(document).ready(function () {
    UpdateOnlineMonitor();
    window.setInterval(function(){
        UpdateOnlineMonitor();
    }, 2500);
});

function UpdateOnlineMonitor() {
    $.ajax({
        type: 'POST',
        url: '/ajax/updatemonitor',
        success: function (output)
        {
            $('.loggedUsers').html('');
            let visitors = Object.values(JSON.parse(output));
            $('.guestCounter').html(visitors[0]);
            $.each(visitors[1], function(index, el) {
                $('.loggedUsers').append('<li>'+el['uid']+'</li>');
                console.log(el['uid']);
            });
        }
    });
}


