<?php


$cpurl = 'http://bsms.supersolutions.pk/vendorsms/pushsms.aspx?apikey=4cb0ed53-46ff-443f-95b7-3cc59e17e063&clientid=00accb86-b10c-4022-a28b-d59906950863&msisdn=923336458112&sid=Hajana+One&msg=test%20message&fl=0';                                                          


    //Sending...
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL,$cpurl);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch, CURLOPT_HEADER, 0);
$result = curl_exec ($ch);

?>