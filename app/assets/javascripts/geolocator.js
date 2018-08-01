if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(function(position) {

    $.ajax({
      data: { latitude: position.coords.latitude, longitude: position.coords.longitude },
      method: 'POST',
      url: '/geolocators',
      dataType: 'script',
    });

  });
}
