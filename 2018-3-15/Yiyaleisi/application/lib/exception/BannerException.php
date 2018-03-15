<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 21:57
 */

namespace app\lib\exception;



class BannerException extends BaseException
{
    public $code = 404;
    public $msg = '请求的Banner栏位id不存在';
    public $errorCode = 40000;
}