import { Injectable } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service.ts';
import { ExperienceModel } from './experience.model.ts';

@Injectable()
export class ExperienceService {
  constructor(private readonly prisma: PrismaService) {}

  async findByProfileId(profileId: string): Promise<ExperienceModel[]> {
    const experiences = await this.prisma.experience.findMany({
      where: { profileId },
      orderBy: { startDate: 'desc' },
    });

    return experiences.map((experience) => ({
      id: experience.id,
      company: experience.company,
      position: experience.position,
      startDate: experience.startDate,
      endDate: experience.endDate,
      achievements: experience.achievements,
    }));
  }
}
