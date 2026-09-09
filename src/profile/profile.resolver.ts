import { Query, Resolver } from '@nestjs/graphql';

import { ProfileModel } from './profile.model.ts';
import { ProfileService } from './profile.service.ts';

@Resolver(() => ProfileModel)
export class ProfileResolver {
  constructor(private readonly profileService: ProfileService) {}

  @Query(() => ProfileModel, { name: 'profile' })
  getProfile(): Promise<ProfileModel> {
    return this.profileService.findOne();
  }
}
