<?php

include_once 'config/dbConfig.php';
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];

    $targetDir = "uploads/"; 
    $allowTypes = array('jpg','png','jpeg','gif','pdf','doc','docx'); 
     
    $statusMsg = $errorMsg = $insertValuesSQL = $errorUpload = $errorUploadType = ''; 
    $fileNames = array_filter($_FILES['files']['name']); 
    if(!empty($fileNames)){ 
        $db->query("INSERT INTO users (name, email, phone) VALUES ('".$name."','".$email."','".$phone."')");
                    $last_id = $db->insert_id;
        foreach($_FILES['files']['name'] as $key=>$val){ 
            // File upload path 
            $fileName = basename($_FILES['files']['name'][$key]); 
            $targetFilePath = $targetDir . $fileName; 
            $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION); 
            if(in_array($fileType, $allowTypes)){
                if(move_uploaded_file($_FILES["files"]["tmp_name"][$key], $targetFilePath)){ 
                    
                    $insertValuesSQL .= "('".$last_id."','".$fileName."', NOW()),"; 
                }else{ 
                    $errorUpload .= $_FILES['files']['name'][$key].' | '; 
                } 
            }else{ 
                $errorUploadType .= $_FILES['files']['name'][$key].' | '; 
            } 
        } 
         
        if(!empty($insertValuesSQL)){ 
            $insertValuesSQL = trim($insertValuesSQL, ','); 
            // $insert1 = $db->query("INSERT INTO images (file_name, uploaded_on) VALUES $insertValuesSQL");
            // $mysqli -> insert_id
            $insert = $db->query("INSERT INTO user_images (userid, file_name, uploaded_on) VALUES $insertValuesSQL"); 
            if($insert){ 
                $errorUpload = !empty($errorUpload)?'Upload Error: '.trim($errorUpload, ' | '):''; 
                $errorUploadType = !empty($errorUploadType)?'File Type Error: '.trim($errorUploadType, ' | '):''; 
                $errorMsg = !empty($errorUpload)?'<br/>'.$errorUpload.'<br/>'.$errorUploadType:'<br/>'.$errorUploadType; 
                // $statusMsg = "Data Submitted Successfully.".$errorMsg; 
                $statusMsg = "Data Submitted Successfully."; 
            }else{ 
                $statusMsg = "Sorry, there was an error uploading your file."; 
            } 
        } 
    }else{ 
        $statusMsg = 'Please select a file to upload.'; 
    } 
    echo $statusMsg; 


?>