<?php
session_start();
include 'db_connection.php';

<<<<<<< HEAD
=======


>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

<<<<<<< HEAD
// Check if the order ID is provided and session is valid
if (!isset($_SESSION['delivery_partner_id']) || !isset($_GET['oid'])) {
    echo "<script>alert('Unauthorized access or missing order ID.');window.location='dashboard.php';</script>";
    exit();
}

$dp_id = $_SESSION['delivery_partner_id'];
$order_id = mysqli_real_escape_string($conn, $_GET['oid']); // Escape the order ID for security

// Update the delivery order status to 'Completed'
$update_delivery_order = "
    UPDATE `delivery_order`
    SET `status` = 'Completed'
    WHERE `order_id` = '$order_id' AND `delivery_partner_id` = '$dp_id'
";
if (mysqli_query($conn, $update_delivery_order)) {
    // Update the main orders table status to 'Completed'
    $update_orders = "
        UPDATE `orders`
        SET `delivery_status` = 'Completed'
        WHERE `order_id` = '$order_id'
    ";
    if (mysqli_query($conn, $update_orders)) {
        // Fetch user details for sending email notification
        $query_user = "
            SELECT 
                orders.order_id, 
                user_register_details.user_email 
            FROM 
                orders
            INNER JOIN 
                user_register_details 
            ON 
                orders.user_id = user_register_details.user_id
            WHERE 
                orders.order_id = '$order_id'
        ";
        $user_result = mysqli_query($conn, $query_user);

        if ($user_result && mysqli_num_rows($user_result) > 0) {
            $user_data = mysqli_fetch_assoc($user_result);
            $user_email = $user_data['user_email'];

            // Send email notification
            $mail = new PHPMailer(true);
            try {
                // PHPMailer server settings
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'spongeebob345@gmail.com'; // Your email address
                $mail->Password = 'agfutmaflsvixzmc'; // Your email password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
                $mail->Port = 465;

                $mail->setFrom('spongeebob345@gmail.com', 'Delivery Service'); // Sender email and name
                $mail->addAddress($user_email); // Recipient email

                // Email content
                $mail->isHTML(true);
                $mail->Subject = "Order Delivered: #$order_id";
                $mail->Body = "
                    <h1>Order Delivered</h1>
                    <p>Your order with <strong>Order ID:</strong> <span style='color: green;'>#$order_id</span> has been successfully delivered.</p>
                    <p>Thank you for choosing our service!</p>
                ";

                // Send email
                if ($mail->send()) {
                    echo "<script>alert('Order marked as completed and email sent.');window.location='dashboard.php';</script>";
                } else {
                    echo "<script>alert('Order marked as completed, but failed to send email.');window.location='dashboard.php';</script>";
                }
            } catch (Exception $e) {
                echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
        } else {
            echo "<script>alert('Order completed, but failed to fetch user details for email.');window.location='dashboard.php';</script>";
        }
    } else {
        echo "<script>alert('Failed to update order status.');window.location='dashboard.php';</script>";
    }
} else {
    echo "<script>alert('Failed to update delivery order status.');window.location='dashboard.php';</script>";
}
?>
=======
if (isset($_GET['oid'])) {
    $id = $_GET['oid'];
    $dp_id = $_SESSION['delivery_partner_id'];

    $sql = "UPDATE `delivery_order` SET `status`='Completed' WHERE `order_id`='$id'";

    if (mysqli_query($conn, $sql)) {

        $q = "UPDATE `orders` SET `delivery_status`='Completed' WHERE `order_id`='$id'";
        if (mysqli_query($conn, $q)) {
            //echo "<script>alert('Order Completed');window.location='dashboard.php';</script>";
        }
    }

    $mail = new PHPMailer(true);

    try {
        // Server settings
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; // Changed to recommended constant
        $mail->Port = 465;
        $mail->Username = 'spongeebob345@gmail.com';
        $mail->Password = 'iubvmfqoahewvkqk';
        $mail->setFrom('spongeebob345@gmail.com', 'Sponge Bob'); // Set a proper name

        // Get order details
        $nsql = "SELECT
                    orders.order_id, orders.user_id, 
                    user_register_details.user_id,user_register_details.user_email
                FROM 
                    orders
                INNER JOIN 
                    user_register_details ON orders.user_id = user_register_details.user_id
                WHERE order_id = '{$id}'";
        $or = mysqli_query($conn, $nsql);
        $result = mysqli_fetch_array($or);
        $mail->isHTML(true);

        $mail->Subject = "Order Delivered";
        $mail->Body = "Your order with ORDER ID " . $result['order_id'] . " has been Delivered."; // Construct the HTML body as needed
        //$mail->AltBody = 'Newsletter content here'; // Plain text version
        //$mail->addEmbeddedImage("../../admin-template/docs/newsletter-uploads/" . $newsletter['nl_image'], "NewsletterImage");


        // Add recipient
        $mail->addAddress($result['user_email']);

        // Send the email
        if ($mail->send()) {
            echo "Email sent<br>";
        } else {
            echo "Error sending email : " . $mail->ErrorInfo . "<br>";
        }

        echo "<script>alert('Order Delivered');window.location='dashboard.php';</script>";
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
}
>>>>>>> ec86fbf52e8728a26c96c2f6c4c10dc28c3b17d3
