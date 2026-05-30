FROM php:8.4-cli-alpine

COPY generate_key.php /generate_key.php

CMD ["php", "/generate_key.php"]