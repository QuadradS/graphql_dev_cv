import { Module } from '@nestjs/common';

import { ExperienceService } from './experience.service.ts';

@Module({
  providers: [ExperienceService],
  exports: [ExperienceService],
})
export class ExperienceModule {}
