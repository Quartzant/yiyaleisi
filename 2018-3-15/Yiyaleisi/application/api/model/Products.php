<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/15
 * Time: 16:00
 */

namespace app\api\model;


class Products extends BaseModel
{
    //这里的关联函数不能随便命名的！！  detail_img这样是不行的
    public function img(){
        return $this->hasMany('images','product_id','id');
    }
    public function color(){
        return $this->hasMany('color','product_id','id');
    }
    public function size(){
        return $this->hasMany('size','product_id','id');
    }



    public static function getProductByID($id){
        $product = self::with(['img','color','size'])
            ->select($id);
        return $product;
    }

    public static function getAllProducts(){
        $products = self::select();
        return $products;
    }
}