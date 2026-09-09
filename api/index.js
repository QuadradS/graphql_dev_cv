import { NestFactory } from '@nestjs/core';

import { AppModule } from '../dist/app.module.js';

let bootstrapPromise;

function getHttpHandler() {
  bootstrapPromise ??= (async () => {
    const app = await NestFactory.create(AppModule, { logger: ['error', 'warn'] });
    app.enableCors();
    await app.init();
    return app.getHttpAdapter().getInstance();
  })();

  return bootstrapPromise;
}

export default async function handler(request, response) {
  const httpHandler = await getHttpHandler();
  return httpHandler(request, response);
}
