<?php


/**
 * 根据id获取项目编号
 */
function getProNo($id){
    if ($id){
        $m=M('program');
        $data=$m->find($id);
        //dump($data);
        return $data['prono'];
    }else {
        return ;
    }
}


/**
 * 根据项目获取里程碑数
 */
function countStage($id){
    $m=M("stage");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}
/**
 * 根据项目获取风险数
 */
function countRisk($id){
    $m=M("risk");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据项目获取范围功能数
 */
function countRange($id){
    $m=M("func");
    $where=array("fproid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据id获取场景数
 */
function countScene($id){
    $m=M("scene");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据项目获取用例数
 */
function countCase($id){
    $m=M("case");
    $where=array("fproid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据分组获取项目数
 */
function countPro($testgp){
    $m=M("program");
    $where=array("testgp"=>$testgp);
    $count=$m->where($where)->count();
    return $count;
}



/**
 * 根据系统编号获取路径数
 */
function countPath($id){
    $m=M("path");
    $where=array("sysid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}
/**
 * 根据路径获取功能数
 */
function countFunc($id){
    $m=M("func");
    $where=array("pathid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据产品获取系统数
 */
function countSys($id){
    $m=M("system");
    $where=array("prodid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据功能获取路径数
 */
function countFCase($id){
    $m=M("case");
    $where=array("funcid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据功能获取规则数
 */
function countFRules($id){
    $m=M("rules");
    $where=array("funcid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据阶段获列队数(M)
 */
function countEsceneM($id){
    $m=M("exescene");
    $where=array("stageid"=>$id,"type"=>"Manual","tester"=>$_SESSION['realname']);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据阶段获列队数(A)
 */
function countEsceneA($id){
    $m=M("exescene");
    $where=array("stageid"=>$id,"type"=>"Auto","tester"=>$_SESSION['realname']);
    $count=$m->where($where)->count();
    return $count;
}
