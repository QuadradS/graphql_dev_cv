import { Module } from '@nestjs/common';

import { ExperienceModule } from '../experience/experience.module.ts';
import { ProfileLinkModule } from '../profile-link/profile-link.module.ts';
import { ProjectModule } from '../project/project.module.ts';
import { ProfileResolver } from './profile.resolver.ts';
import { ProfileService } from './profile.service.ts';

@Module({
  imports: [ProfileLinkModule, ExperienceModule, ProjectModule],
  providers: [ProfileResolver, ProfileService],
  exports: [ProfileService],
})
export class ProfileModule {}
