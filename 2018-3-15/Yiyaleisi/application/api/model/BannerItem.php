<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 20:52
 */

namespace app\api\model;


class BannerItem extends BaseModel
{
    public function img(){
        //主动去关联hasOne，被关联的belongsTo
        return $this->hasOne('images','id','img_id');
    }
}