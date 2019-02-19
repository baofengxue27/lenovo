<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

// 使用类

use App\Http\Controllers\Controller;

// 后台管理员控制器
class UserController extends Controller
{
    // 管理员首页

    public function index(Request $request){

        $search=$request->input('search');

        if ($search) {
            // 获取总数据

            $tot=\DB::table("user")->where("tel",'=',$search)->count();

            // 从数据库中读取数据

            $data=\DB::table("user")->where("tel",'=',$search)->paginate(10); 
        }else{
            // 获取总数据

            $tot=\DB::table("user")->count();

            // 从数据库中读取数据

            $data=\DB::table("user")->paginate(10); 
        }

        
    	// 加载页面

    	return view("admin.user.index")->with('data',$data)->with("tot",$tot);

    }

}
