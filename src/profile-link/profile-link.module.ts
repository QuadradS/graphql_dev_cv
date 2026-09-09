import { Module } from '@nestjs/common';

import { ProfileLinkService } from './profile-link.service.ts';

@Module({
  providers: [ProfileLinkService],
  exports: [ProfileLinkService],
})
export class ProfileLinkModule {}
