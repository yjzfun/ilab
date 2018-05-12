$(document).ready(function() {
    $(".search-btn").on("click", function() {
        $("#searchForm").submit();
    });

    $(document).keyup(function(event) {
        if(event.keyCode == 13) {
            $("#searchForm").submit();
        }
    });
});
