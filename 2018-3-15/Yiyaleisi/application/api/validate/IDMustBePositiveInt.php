<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 20:17
 */

namespace app\api\validate;


class IDMustBePositiveInt extends BaseValidate
{
    protected $rule = [
        'id' => 'require|isPositiveInteger'
    ];

    protected $message = [
        'id' => 'id必须是正整数'
    ];
}