import { Injectable } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service.ts';
import { SkillModel } from './skill.model.ts';

@Injectable()
export class SkillService {
  constructor(private readonly prisma: PrismaService) {}

  async findByProfileId(profileId: string): Promise<SkillModel[]> {
    const skills = await this.prisma.skill.findMany({
      where: { profileId },
      orderBy: [{ sortOrder: 'asc' }, { name: 'asc' }],
    });

    return skills.map((skill) => ({ id: skill.id, name: skill.name }));
  }
}
