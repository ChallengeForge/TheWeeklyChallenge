
  $(document).ready(function() {
    // Handle reply button click
    $('.reply-btn').click(function() {
      // Clone the comment form
      var commentForm = $('.comment-form').clone();
      // Remove any existing comment form
      $('.comment-form').remove();
      // Append the cloned comment form after the clicked reply button's parent comment
      $(this).closest('.comment').append(commentForm);
    });

    // Handle comment form submission
    $('#commentForm').submit(function(e) {
      e.preventDefault();
      var commentText = $('#comment-text').val();
      if (commentText.trim() !== '') {
        // Create a new comment element
        var newComment = $('<div class="comment"><div class="comment-header"><img src="https://via.placeholder.com/50" alt="User Avatar" class="avatar"><h5>User</h5></div><div class="comment-body"><p>' + commentText + '</p><button class="btn btn-sm btn-primary reply-btn">Reply</button></div></div>');
        // Append the new comment to the comments section
        $('.comments').append(newComment);
        // Clear the textarea
        $('#comment-text').val('');
      } else {
        alert('Please enter a comment.');
      }
    });
  });

  

