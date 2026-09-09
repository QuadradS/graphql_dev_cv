import { Injectable } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service.ts';
import { ProjectModel } from './project.model.ts';

@Injectable()
export class ProjectService {
  constructor(private readonly prisma: PrismaService) {}

  async findByProfileId(profileId: string): Promise<ProjectModel[]> {
    const projects = await this.prisma.project.findMany({
      where: { profileId },
      orderBy: [{ sortOrder: 'asc' }, { name: 'asc' }],
    });

    return projects.map((project) => ({
      id: project.id,
      name: project.name,
      url: project.url,
      description: project.description,
    }));
  }
}
