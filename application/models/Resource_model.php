<?php

class Resource_model extends CI_Model {

  public function showCategory()
  {
    $select = "SELECT A.*, CONCAT(A.category_id, ' - ', A.category_description) AS category_description FROM category AS A";

    $execute = $this->db->query($select);

    return ($execute->num_rows() > 0) ? $execute->result_array() : array();
  }

  public function showResource()
  {
    $select = "SELECT * FROM resource";

    $execute = $this->db->query($select);

    return ($execute->num_rows() > 0) ? $execute->result_array() : array();
  }

  public function showList()
  {
    $select = "SELECT  C.*, CONCAT(C.resource_name, ' - ' , C.resource_description) AS resource_name_description, a.*
                FROM category AS A
                INNER JOIN resource_category AS B ON A.category_id = B.category_id
                INNER JOIN resource AS C ON C.resource_id = B.resource_id
                WHERE A.category_id = B.category_id AND C.resource_id = B.resource_id
                ORDER BY C.resource_name ASC
              ";

    $execute = $this->db->query($select);

    return ($execute->num_rows() > 0) ? $execute->result_array() : array();

  }

  public function resourceMaxID()
  {
    $select = "SELECT MAX(resource_id + 1) AS max_id FROM resource";

    $execute = $this->db->query($select);

    return ($execute->num_rows() > 0) ? $execute->result_array() : array();
  }

  public function showCategoryOption()
  {
    $select = "SELECT * FROM category";

    $execute = $this->db->query($select);

    return ($execute->num_rows() > 0) ? $execute->result_array() : array();
  }

  //INSERT INTO resource (resource_name, resource_description, resource_link)
  public function insertResource($dados)
  {
    $insert = "INSERT INTO resource (resource_name, resource_description, resource_link)
              VALUES ('{$dados['resource_name']}', '{$dados['resource_description']}', '{$dados['resource_link']}')";

    #echo $insert; exit();

    $execute = $this->db->query($insert);

    if($execute) {
      $insert = "INSERT INTO resource_category (`category_id`, `resource_id`) VALUES ({$dados['resource_category']}, {$dados['resource_id']})";
      $execute = $this->db->query($insert);
      return true;
    }

    return false;


  }

  public function getLastResource()
  {
    $select = "SELECT resource_link FROM resource ORDER BY created_at DESC LIMIT 1";

    $execute = $this->db->query($select);

    return ($execute->num_rows() > 0) ? $execute->result_array() : array();

  }


}