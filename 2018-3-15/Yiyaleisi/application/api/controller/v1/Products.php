<?php
/**
 * Created by PhpStorm.
 * User: qezrt
 * Date: 2018/3/15
 * Time: 15:52
 */

namespace app\api\controller\v1;
use app\api\model\Products as ProductsModel;

use app\api\validate\IDMustBePositiveInt;
use app\lib\exception\ProductException;

class Products
{
    //获得所有的产品及其详情,无需参数
    public function getProducts(){
        $products = ProductsModel::getAllProducts();
        return $products;
    }

    //获得给定id的产品颜色，尺寸，图片url等
    public function getDetailProduct($id){
        (new IDMustBePositiveInt())->goCheck();
        $product = ProductsModel::getProductByID($id);
        if($product->isEmpty()){
            throw new ProductException();
        }
        return $product;
    }
}