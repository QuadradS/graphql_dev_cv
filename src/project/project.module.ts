import { Module } from '@nestjs/common';

import { ProjectService } from './project.service.ts';

@Module({
  providers: [ProjectService],
  exports: [ProjectService],
})
export class ProjectModule {}
