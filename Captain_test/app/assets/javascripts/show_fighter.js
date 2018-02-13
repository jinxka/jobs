function pointsLeft() {
    points_left = parseInt($('.talent').val()) - (parseInt($(".strength").val()) + parseInt($(".dexterity").val()) +parseInt($(".intelligence").val()));
    $(".talent_point").text(points_left);
    return (points_left);
}
function chooseFighter() {
    $(".first_fighter").val(parseInt($("#select_first_fighter").val()));
    $(".second_fighter").val(parseInt($("#select_second_fighter").val()));
}