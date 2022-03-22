CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
);

INSERT INTO `spring_security`.`users` (`id`, `email`, `first_name`, `last_name`, `password`, `role`, `status`) VALUES ('1', 'admin@email.com', 'Admin', 'Adminov', '$2a$12$v9s/S0sIicv/XidhboIne..MC8wZQ0.PMj8fOJ3no2nCI6TAUrZJS', 'ADMIN', 'ACTIVE');
INSERT INTO `spring_security`.`users` (`id`, `email`, `first_name`, `last_name`, `password`, `role`, `status`) VALUES ('2', 'user@email.com', 'User', 'Userov', '$2a$12$6NkdVtGDvVCC7z9IdQSZ4.EO3XofguZsS6fZFTNMrFICo0UiYYJ.a', 'USER', 'ACTIVE');
commit;