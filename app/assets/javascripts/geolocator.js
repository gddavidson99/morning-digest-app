function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {

      $.ajax({
        data: { latitude: position.coords.latitude, longitude: position.coords.longitude },
        type: 'post',
        dataType: 'script',
        url: '/'
      });

    });
  }
}
