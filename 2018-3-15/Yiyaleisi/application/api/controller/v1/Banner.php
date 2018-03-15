<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/14
 * Time: 11:03
 */

namespace app\api\controller\v1;
use app\api\model\Banner as BannerModel;
use app\api\validate\IDMustBePositiveInt;
use app\lib\exception\BannerException;


class Banner
{
    public function getBanner($id){
        //挡住不符合的id
        (new IDMustBePositiveInt())->goCheck();
        //挡住不符合的id号后，用符合的id号获取信息（业务处理，放在业务层  model）
        $banner = BannerModel::getBannerByID($id);
        //在不考虑异常的情况下，获得想要的信息，返回结果
        if($banner->isEmpty()){
            throw new BannerException;
        }
        return json($banner);
    }
}