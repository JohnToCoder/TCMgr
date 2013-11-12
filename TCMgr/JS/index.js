$(function () {
    $('#cc').layout();
    setHeight();
});
function setHeight() {
    var cheight = document.documentElement.clientHeight;
    var cwidth = document.documentElement.clientWidth;
    var c = $('#cc');
    c.height(cheight-20);
    c.width(cwidth-10);
    c.layout('resize');
}