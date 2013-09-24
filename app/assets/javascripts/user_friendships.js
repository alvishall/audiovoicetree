window.userFriendships = [];

$(document).ready(function() {
    $.ajax({
        url: Routes.user_friendships_path({format: 'json'}),
        dataType: 'json',
        type: 'GET',
        success: function(data) {
            window.userFriendships = data;
        }
    });

  $('#add-family').click(function(event){
    event.preventDefault();
    var addFamilyBtn = $(this);
    $.ajax({
    	url: Routes.user_friendships_path({user_friendship: { friend_id: addFamilyBtn.data('friendId') }}),
    	dataType: 'json',
    	type: 'POST',
    	success: function(e) {
    		addFamilyBtn.hide();
    		$("#family-status").html("<a href='#' class='btn btn-success'>Family Requested</a>");
    	}
    });
  });

});