# Laravel App Key Generator

This is a simple Docker image that generates a Laravel application key using the `random_bytes` function in PHP. The generated key is output in the format `base64:...`, which is suitable for use in Laravel's `.env` file.

The implementation is a bit different from [Laravel's](https://github.com/laravel/framework/blob/21bb042f97d30bf03767031641c5b78ce26418a4/src/Illuminate/Foundation/Console/KeyGenerateCommand.php#L61-L66), which they use Encrypter class to generate the key, but this approach is more straightforward and does not require any additional dependencies.

## Usage

To use this Docker image, you can run the following command:

```bash
docker build -t laravel-app-key .
docker run --rm laravel-app-key
```

Or use prebuild image from Docker Hub:

```bash
docker run --rm iqfareez/laravel-app-key
```

You can copy the generated key and use it in your Laravel application's `.env` file under the `APP_KEY` variable.
