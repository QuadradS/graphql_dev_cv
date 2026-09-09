import { Parent, Query, ResolveField, Resolver } from '@nestjs/graphql';

import { ProfileLinkModel } from '../profile-link/profile-link.model.ts';
import { ProfileLinkService } from '../profile-link/profile-link.service.ts';
import { ProfileModel } from './profile.model.ts';
import { ProfileService } from './profile.service.ts';

@Resolver(() => ProfileModel)
export class ProfileResolver {
  constructor(
    private readonly profileService: ProfileService,
    private readonly profileLinkService: ProfileLinkService,
  ) {}

  @Query(() => ProfileModel, { name: 'profile' })
  getProfile(): Promise<ProfileModel> {
    return this.profileService.findOne();
  }

  @ResolveField(() => [ProfileLinkModel], { name: 'links' })
  getLinks(@Parent() profile: ProfileModel): Promise<ProfileLinkModel[]> {
    return this.profileLinkService.findByProfileId(profile.id);
  }
}
