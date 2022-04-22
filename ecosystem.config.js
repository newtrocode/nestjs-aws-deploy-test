module.exports = {
  apps: [
    {
      name: 'nestjs-aws-deploy-test',
      script: './dist/main.js',
      watch: true,
      env: {
        NODE_ENV: 'development',
      },
    },
  ],
};