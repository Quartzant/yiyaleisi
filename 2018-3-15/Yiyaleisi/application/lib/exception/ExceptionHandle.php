<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 22:30
 */

namespace app\lib\exception;
use think\Log;
use think\Request;
use think\exception\Handle;


class ExceptionHandle extends Handle
{
    private $code;
    private $msg;
    private $errorCode;

    public function render(\Exception $e){
        if ($e instanceof BaseException){
            $this->code = $e->code;
            $this->msg = $e->msg;
            $this->errorCode = $e->errorCode;
            //这里的异常直接返回给了客户端，是不会记录日志的
        }else{
            //设计开关
            //$switch = true;
            if(config('app_debug')){
                return parent::render($e);
            }else {
                $this->code = 500;
                $this->msg = '服务器内部错误,不告诉你';
                $this->errorCode = 999;
                $this->recordErrorLog($e);
            }
        }
        $request = Request::instance();

        $result = [
            'msg' => $this->msg,
            'error_code' => $this->code,
            'request_url' => $request->url()
        ];

        return json($result, $this->code);
    }

    public function recordErrorLog(\Exception $e){
        Log::init([
            'type' => 'File',
            'path' => LOG_PATH,
            'level' => ['error']
        ]);
        Log::record($e->getMessage(), 'error');
    }
}