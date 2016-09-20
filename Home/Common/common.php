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

