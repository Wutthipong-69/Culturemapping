<?php
header('Content-Type: application/json; charset=utf-8');

$targetDir = "images/";
if (!is_dir($targetDir)) {
    mkdir($targetDir, 0777, true);
}

if (isset($_FILES['imageFile']) && $_FILES['imageFile']['error'] === UPLOAD_ERR_OK) {
    $fileTmpPath = $_FILES['imageFile']['tmp_name'];
    $rawName = basename($_FILES['imageFile']['name']);
    $fileExtension = strtolower(pathinfo($rawName, PATHINFO_EXTENSION));

    $allowedExts = ['jpg', 'jpeg', 'png'];
    if (!in_array($fileExtension, $allowedExts)) {
        echo json_encode(['success' => false, 'message' => 'อนุญาตเฉพาะไฟล์ .jpg และ .png']);
        exit;
    }

    // ตรวจสอบให้แน่ใจว่าชื่อไฟล์ขึ้นต้นด้วย geo- เสมอ
    $finalFileName = (strpos($rawName, 'geo-') === 0) ? $rawName : 'geo-' . $rawName;
    $destPath = $targetDir . $finalFileName;

    if (move_uploaded_file($fileTmpPath, $destPath)) {
        echo json_encode(['success' => true, 'filename' => $finalFileName]);
    } else {
        echo json_encode(['success' => false, 'message' => 'ไม่สามารถบันทึกไฟล์ลงโฟลเดอร์ images ได้']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'ไม่พบไฟล์ที่อัปโหลด']);
}
?>