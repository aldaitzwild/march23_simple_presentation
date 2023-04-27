<?php

namespace App\Controller;

use App\Model\DiscountManager;
use App\Model\ProductManager;

class DiscountController extends AbstractController
{
    public function add(): string
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $discount = array_map('trim', $_POST);

            //TODO - Add some security controls

            $discountManager = new DiscountManager();
            $discountManager->insert($discount);

            header('Location: /');
            die();
        }

        $productManager = new ProductManager();
        $products = $productManager->selectAll();

        return $this->twig->render('Discount/add.html.twig', [
            'products' => $products
        ]);
    }
}
