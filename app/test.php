<?php
    $apiKey = '7122103ed63744c59bc9f5b137e295e7';
    $apiSecret = 'c9a13e22556358d312c5f471e772ad1ea3cd75216686a1ea7fea926b88063787';
    $apiUrl = 'https://api.changelly.com';
    $message = json_encode(
        array('jsonrpc' => '2.0', 'id' =>'test', 'method' => 'getCurrencies', 'params' => array())
    );
    $sign = hash_hmac('sha512', $message, $apiSecret);
    $requestHeaders = [
        'api-key:' . $apiKey,
        'sign:' . $sign,
        'Content-type: application/json'
    ];
    $ch = curl_init($apiUrl);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $message);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $requestHeaders);
    
    $response = curl_exec($ch);
    curl_close($ch);
    var_dump($response);

    ?>