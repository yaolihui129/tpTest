<?php
/*
 * 功能函数库
 */
//测试函数
function test(){
    return $_SESSION['realname'];
}

function mstate($type){
    $m=M('dict');
    $where=array("type"=>"$type");
    $data=$m->where($where)->select();
    foreach ($data as $d){
        $str.= "<option value='".$d['v']."'".">".$d['v']."</option>";
    }
    $s ="<select name=".$type.">".$str."</select>";
    return $str;
}

/**
 * 状态选择控件
 *
 * @param $name 控件name
 * @param $value 选中值
 */
 function state($name,$value="正常"){
    $str.='<select name="'.$name.'">
	           <option value="正常" <?php echo"'.$value.'"=="正常"?"selected=selected":"";?> >正常</option>
	           <option value="待确认" "'.$value.'"=="待确认"?"selected=selected":""; >待确认</option>
	           <option value="已搁置" "'.$value.'"=="已搁置"?"selected=selected":""; >已搁置</option>
	           <option value="作废"  "'.$value.'"=="作废"?"selected=selected":""; >作废</option>
	        </select>' ;
    return $str;
}