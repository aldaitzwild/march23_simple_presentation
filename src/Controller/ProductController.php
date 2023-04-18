<?php

namespace App\Controller;

use App\Model\ProductManager;

class ProductController extends AbstractController
{
    public function list(): string
    {
        $productManager = new ProductManager();
        $products = $productManager->selectAll();

        return $this->twig->render('Product/list.html.twig', ['products' => $products]);
    }

    public function show(int $id): string
    {
        $productManager = new ProductManager();
        $product = $productManager->selectOneById($id);

        return $this->twig->render('Product/details.html.twig', ['product' => $product]);
    }

    public function add(): string
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $product = array_map('trim', $_POST);

            //TODO - Add some security controls

            $productManager = new ProductManager();
            $productManager->insert($product);

            header('Location: /');
            die();
        }
        return $this->twig->render('Product/add.html.twig');
    }
}
