<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\Route;


//Route::rule("hello/:id","sample/Test/hello");
//Route::rule("banner/:id","api/v1.Banner/getBanner");

//通过id获得轮播图
Route::get('api/:version/banner/:id','api/:version.Banner/getBanner');
//直接获取所有简单的产品
Route::get('api/:version/products/getall','api/:version.Products/getProducts');
//获得单项产品的图片、尺寸、颜色信息
Route::get('api/:version/products/:id','api/:version.Products/getDetailProduct');
