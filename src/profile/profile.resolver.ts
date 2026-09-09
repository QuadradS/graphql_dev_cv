import { Parent, Query, ResolveField, Resolver } from '@nestjs/graphql';

import { ProfileLinkModel } from '../profile-link/profile-link.model.ts';
import { ProfileLinkService } from '../profile-link/profile-link.service.ts';
import { ProjectModel } from '../project/project.model.ts';
import { ProjectService } from '../project/project.service.ts';
import { ProfileModel } from './profile.model.ts';
import { ProfileService } from './profile.service.ts';

@Resolver(() => ProfileModel)
export class ProfileResolver {
  constructor(
    private readonly profileService: ProfileService,
    private readonly profileLinkService: ProfileLinkService,
    private readonly projectService: ProjectService,
  ) {}

  @Query(() => ProfileModel, { name: 'profile' })
  getProfile(): Promise<ProfileModel> {
    return this.profileService.findOne();
  }

  @ResolveField(() => [ProfileLinkModel], { name: 'links' })
  getLinks(@Parent() profile: ProfileModel): Promise<ProfileLinkModel[]> {
    return this.profileLinkService.findByProfileId(profile.id);
  }

  @ResolveField(() => [ProjectModel], { name: 'projects' })
  getProjects(@Parent() profile: ProfileModel): Promise<ProjectModel[]> {
    return this.projectService.findByProfileId(profile.id);
  }
}
