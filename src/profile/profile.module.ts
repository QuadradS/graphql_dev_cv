import { Module } from '@nestjs/common';

import { ProfileLinkModule } from '../profile-link/profile-link.module.ts';
import { ProfileResolver } from './profile.resolver.ts';
import { ProfileService } from './profile.service.ts';

@Module({
  imports: [ProfileLinkModule],
  providers: [ProfileResolver, ProfileService],
  exports: [ProfileService],
})
export class ProfileModule {}
