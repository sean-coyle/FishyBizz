
function get_unix_time(_datetime = date_current_datetime())
{
    var _epoch = date_create_datetime(1970, 1, 1, 0, 0, 0);
    return floor(date_second_span(_epoch, _datetime));
}