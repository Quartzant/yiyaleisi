<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 20:08
 */

namespace app\api\validate;
use think\Exception;
use think\Request;
use think\Validate;


class BaseValidate extends Validate
{
    public function goCheck(){
        $request = Request::instance();
        $params = $request->param();
        $result = $this->check($params);
        if(!$result){
            $error  = $this->error;
            throw new Exception($error);
        }else{
            return true;
        }
    }

    protected function isPositiveInteger($value, $rule='', $data='', $field=''){
        $value2 = intval($value);
        if (is_numeric($value2)&&is_int($value2)&&($value2+0)>0) {
            return true;
        }
        else {
            return false;
        }
    }

}