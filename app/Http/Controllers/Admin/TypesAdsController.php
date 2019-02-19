<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

// 使用类

use App\Http\Controllers\Controller;

// 后台分类广告控制器
class TypesAdsController extends Controller
{
    // 分类广告首页

    public function index(Request $request){
    	// 多标查询

    	$data=\DB::table("typesads")->select("typesads.*","types.name")->join("types","types.id",'=','typesads.cid')->paginate(5);

        // 加载页面

        return view("admin.sys.types.index")->with("data",$data);

    }

    // 分类广告的添加页面

    public  function create(){
    	$data=\DB::table("types")->where("pid",0)->get();
    	return view("admin.sys.types.add")->with('data',$data);
    }

    // 分类广告的处理方法

    public function store(Request $request){

    	// 剔除不需要的数据

    	$arr=$request->except("_token");

    	// 插入数据库

    	if (\DB::table("typesads")->insert($arr)) {
    		# code...
    		return redirect("admin/sys/types");
    	}else{
    		return back();
    	}
    }

}
