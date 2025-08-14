SET SESSION sql_mode='';
SET NAMES 'utf8mb4';

INSERT INTO `PREFIX_hook` (`id_hook`, `name`, `title`, `description`, `position`) VALUES
  -- https://github.com/PrestaShop/PrestaShop/pull/39366
  (NULL, 'actionCheckoutStepRenderTemplate','Modify the parameters of the checkout step template rendering','This hook is called when rendering every checkout step template', '1'),
  ON DUPLICATE KEY UPDATE `title` = VALUES(`title`), `description` = VALUES(`description`);