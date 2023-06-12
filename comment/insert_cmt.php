<?php

  header('Access_Control-Allow-Origin: *'); // 크로스 오리진 허용 
  header('Content-Type: application/json'); // 데이터 형식 json
  header('Access-Control-Allow-Methods: POST'); // 허용 메서드
  header('Access-Control-Allow-Headers: Access_Control-Allow_headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-Width');

  include $_SERVER["DOCUMENT_ROOT"].'/connect/db_conn.php';
  include $_SERVER["DOCUMENT_ROOT"].'/baexang_back/comment/cmt.php';

  $msg = [];

  $insert_comment = new Comment($db);

  $data = json_decode(file_get_contents('php://input'));

  session_start();
  if(isset($_SESSION['useridx'])){
    $cmt_u_idx = $_SESSION['useridx'];
  } else {
    $cmt_u_idx = '';
  }

  if($cmt_u_idx == ''){
    $msg = ['msg' => '사용자 정보가 없습니다. \n잘못된 접근입니다.'];
  } else {
    if($data->cmt_star == ''){
      $data->cmt_star = 1;
    } else {
      $data->cmt_star = $data->cmt_star;
    }

    $cmt_pr_ID = $_GET['pr_ID']; // 주소로 받아온 상품 번호

    // 가공된 데이터 DAO 클래스로 전달
    $insert_comment->cmt_u_idx = $cmt_u_idx;
    $insert_comment->cmt_pr_ID = $cmt_pr_ID;
    $insert_comment->cmt_cont  = $data->cmt_cont;
    $insert_comment->cmt_star  = $data->cmt_star;

    if(!$insert_comment->insert_comment()){
      $msg = ['msg'=>'작품평 입력에 실패했습니다.'];
    } else {
      $msg = ['msg'=>'작품평이 입력되었습니다.'];
    }
  }

  echo json_encode($msg);

?>