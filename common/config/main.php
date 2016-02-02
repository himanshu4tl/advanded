<?php
function p($data,$exit=1)
{
    echo "<pre>";
    print_r($data);
    echo "</pre>";
    if($exit==1)
    {
        exit;   
    }   
}
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'bootstrap' => ['log','debug','gii'],
    'modules' => [
        'debug' => 'yii\debug\Module',
        'gii' => 'yii\gii\Module'
    ],
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=yii2advanced',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            /*'viewPath' => '@common/mail',*/
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'smtp.gmail.com',
                'username' => 'alaxander365@gmail.com',
                'password' => 'infinity3939',
                'port' => '587',
                'encryption' => 'tls',
            ],
        ],
        
    ],
];
