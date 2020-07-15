<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Msgnineone
{ 
    private $_CI; 
  
    public $route = "4";
    public $api_id = "";
    public $authKey = ""; 
    public $senderId = ""; 
 
    public $url="http://bsms.supersolutions.pk/vendorsms/pushsms.aspx";
    
    function __construct($array) {
     $this->_CI =& get_instance();
     $this->api_key=$array['api_id'];
     $this->authKey=$array['authkey'];
     $this->senderId=$array['senderid'];

 }



 function sendSMS($to, $message) { 
    $postData = array(
        'apikey' => $this->api_key,
        'clientid' => $this->authKey,
        'msisdn' => $to,
        'msg' => $message,
        'sid' => $this->senderId,
        'fl' => '0'
    );
    
    $ch = curl_init();
    curl_setopt_array($ch, array(
        CURLOPT_URL => $this->url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => $postData
        //,CURLOPT_FOLLOWLOCATION => true
    ));
      //Ignore SSL certificate verification
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

    
    //get response
    $output = curl_exec($ch);
    
    //Print error if any
    if(curl_errno($ch))
    {
    //echo 'error:' . curl_error($ch);
    }
    curl_close($ch);
  
    return true;
 }

}
?>