-- 由于数据库中表多，字段分散，所以想形成［注册人姓名，注册人手机号，报名人姓名，报名人手机号］的表，用于信息员进行VIP注册
SELECT A.id, A.realname, A.mobile, B.id, B.realname, B.mobile
FROM (
        SELECT users_contacter.id, users_contacter.user_id, users_contacter.realname, users_contacter.mobile
        FROM users_contacter 
        WHERE users_contacter.id IN(
          SELECT order_detail.contacter_id 
          FROM order_detail 
          WHERE order_detail.order_id IN (
            SELECT orders.id 
            FROM orders 
            WHERE orders.'no' IN (
              '123','456','789'
            )
          )
        )
) A
LEFT JOIN 
users B
ON A.user_id = B.id



