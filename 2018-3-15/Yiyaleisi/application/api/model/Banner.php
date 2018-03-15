<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 20:24
 */

namespace app\api\model;


class Banner extends BaseModel
{
    //需要静态函数，但是静态函数不能用this，直接是查不了的
    //先用普通的函数this(hasMany)，然后再用静态函数self
//    public static function getBannerByID($id){
//        return $this->hasMany('banner_item','banner_id','id');
//    }
    public function items(){
        return $this->hasMany('banner_item','banner_id','id');
    }

    public static function getBannerByID($id){
        $banner = self::with(['items','items.img'])
            ->select($id);
        return $banner;
    }
}