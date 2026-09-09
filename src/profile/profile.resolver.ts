import { Args, Parent, Query, ResolveField, Resolver } from '@nestjs/graphql';

import { ExperienceModel } from '../experience/experience.model.ts';
import { ExperienceService } from '../experience/experience.service.ts';
import { ProfileLinkModel } from '../profile-link/profile-link.model.ts';
import { ProfileLinkService } from '../profile-link/profile-link.service.ts';
import { ProjectModel } from '../project/project.model.ts';
import { ProjectService } from '../project/project.service.ts';
import { SkillModel } from '../skill/skill.model.ts';
import { SkillService } from '../skill/skill.service.ts';
import { ProfileModel } from './profile.model.ts';
import { ProfileService } from './profile.service.ts';

@Resolver(() => ProfileModel)
export class ProfileResolver {
  constructor(
    private readonly profileService: ProfileService,
    private readonly profileLinkService: ProfileLinkService,
    private readonly skillService: SkillService,
    private readonly experienceService: ExperienceService,
    private readonly projectService: ProjectService,
  ) {}

  @Query(() => [ProfileModel], { name: 'profiles' })
  getProfiles(): Promise<ProfileModel[]> {
    return this.profileService.findAll();
  }

  @Query(() => ProfileModel, { name: 'profile' })
  getProfile(
    @Args('slug', { type: () => String, nullable: true }) slug?: string,
  ): Promise<ProfileModel> {
    return slug
      ? this.profileService.findBySlug(slug)
      : this.profileService.findOne();
  }

  @ResolveField(() => [ProfileLinkModel], { name: 'links' })
  getLinks(@Parent() profile: ProfileModel): Promise<ProfileLinkModel[]> {
    return this.profileLinkService.findByProfileId(profile.id);
  }

  @ResolveField(() => [SkillModel], { name: 'skills' })
  getSkills(@Parent() profile: ProfileModel): Promise<SkillModel[]> {
    return this.skillService.findByProfileId(profile.id);
  }

  @ResolveField(() => [ExperienceModel], { name: 'experience' })
  getExperience(@Parent() profile: ProfileModel): Promise<ExperienceModel[]> {
    return this.experienceService.findByProfileId(profile.id);
  }

  @ResolveField(() => [ProjectModel], { name: 'projects' })
  getProjects(@Parent() profile: ProfileModel): Promise<ProjectModel[]> {
    return this.projectService.findByProfileId(profile.id);
  }
}
