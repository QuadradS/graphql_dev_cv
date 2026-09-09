import { Module } from '@nestjs/common';

import { ProfileLinkModule } from '../profile-link/profile-link.module.ts';
import { ProjectModule } from '../project/project.module.ts';
import { ProfileResolver } from './profile.resolver.ts';
import { ProfileService } from './profile.service.ts';

@Module({
  imports: [ProfileLinkModule, ProjectModule],
  providers: [ProfileResolver, ProfileService],
  exports: [ProfileService],
})
export class ProfileModule {}
