<?php

namespace App\Model;

use PDO;

class DiscountManager extends AbstractManager
{
    public const TABLE = 'discount';

    public function insert(array $discount): void
    {
        $query = "INSERT INTO " . self::TABLE . " (amount, product_id)
                VALUES (:amount, :productId);";
        $statement = $this->pdo->prepare($query);
        $statement->bindValue(':amount', $discount['amount'], PDO::PARAM_STR);
        $statement->bindValue(':productId', $discount['productId'], PDO::PARAM_STR);

        $statement->execute();
    }
}
