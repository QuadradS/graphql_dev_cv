import { Module } from '@nestjs/common';

import { SkillService } from './skill.service.ts';

@Module({
  providers: [SkillService],
  exports: [SkillService],
})
export class SkillModule {}
