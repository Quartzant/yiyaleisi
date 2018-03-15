<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 21:56
 */

namespace app\lib\exception;


use think\Exception;

class BaseException extends Exception
{
    public $code = 400;
    public $msg = '参数错误';
    public $errorCode = 10000;


}