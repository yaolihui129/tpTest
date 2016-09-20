<?php
/*
 * 功能函数库
 */

/**
 * 状态选择控件
 *
 * @param $name 控件name
 * @param $value 选中值
 */

function formselect($value="正常",$name="state",$type="state") {
    $html = '<select name="'.$name.'" class="inputselect">';
    $m =M('dict');
    $where=array("type"=>$type,"state"=>"正常");
    //获取所有分类
    $cats = $m->where($where)->select();


    foreach($cats as $v) {
        $selected = ($v['v']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['v'].'">'.$v['v'].'</option>';
    }

    $html .='<select>';

    return $html;
}
/**
 * 产品选择
 *
 * @param $value 选中值
 */
function prodselect($value=1) {
    $html = '<select name="prodid" class="inputselect">';
    $m =M('product');
    //$where=array("state"=>"正常");
    //获取所有分类
    $cats = $m->select();


    foreach($cats as $v) {
        $selected = ($v['id']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['short'].'</option>';
    }

    $html .='<select>';

    return $html;
}


/**
 * 项目选择
 *
 * @param $value 选中值
 */
function proselect($value=1,$name=prono) {
    $html = '<select name="'.$name.'" class="inputselect">';
    $m =M('program');
    $where=array("testgp"=>$_SESSION['testgp']);
    //获取所有分类
    $cats = $m->where($where)->order("end desc")->select();


    foreach($cats as $v) {
        $selected = ($v['id']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['prono'].'</option>';
    }

    $html .='<select>';

    return $html;
}
/**
 * 根据id获取项目编号
 */
function getProNo($id){

    $m=M('program');
    $data=$m->find($id);
    //dump($data);
    return $data['prono'];

}

/**
 * 系统选择
 *
 * @param $value 选中值
 */
function sysselect($value=1) {
    $html = '<select name="prodid" class="inputselect">';
    $m =M('system');
    //$where=array("state"=>"正常");
    //获取所有分类
    $cats = $m->select();


    foreach($cats as $v) {
        $selected = ($v['id']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['sysid'].'</option>';
    }

    $html .='<select>';

    return $html;
}

/**
 * 根据id获取场景
 */
 function getScene($id){

    $m=M('scene');
    $data=$m->find($id);
    $str='角色:'.$data['swho'].';时间:'.$data['swhen'].';场景:'.$data['scene'];
    return $str;

}

/**
* 根据id获取数目
*/
function countExeFunc($id){
    $m=M("exefunc");
   $where=array("testsceneid"=>$id);
    $count=$m->where($where)->count();
    return $count;

}
