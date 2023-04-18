<?php

namespace App\Model;

use PDO;

class ProductManager extends AbstractManager
{
    public const TABLE = 'product';

    public function insert(array $product): void
    {
        $query = "INSERT INTO " . self::TABLE . " (name, description, price, photo_url)
                VALUES (:name, :description, :price, :photo);";
        $statement = $this->pdo->prepare($query);
        $statement->bindValue(':name', $product['name'], PDO::PARAM_STR);
        $statement->bindValue(':description', $product['description'], PDO::PARAM_STR);
        $statement->bindValue(':price', $product['price'], PDO::PARAM_INT);
        $statement->bindValue(':photo', $product['photo_url'], PDO::PARAM_STR);

        $statement->execute();
    }
}
