import { Injectable, NotFoundException } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service.ts';
import { ProfileModel } from './profile.model.ts';

@Injectable()
export class ProfileService {
  constructor(private readonly prisma: PrismaService) {}

  async findAll(): Promise<ProfileModel[]> {
    const profiles = await this.prisma.profile.findMany({
      orderBy: { name: 'asc' },
    });

    return profiles.map((profile) => ({
      id: profile.id,
      slug: profile.slug,
      name: profile.name,
      description: profile.description,
    }));
  }

  async findBySlug(slug: string): Promise<ProfileModel> {
    const profile = await this.prisma.profile.findUnique({ where: { slug } });

    if (!profile) {
      throw new NotFoundException(`Profile "${slug}" not found`);
    }

    return {
      id: profile.id,
      slug: profile.slug,
      name: profile.name,
      description: profile.description,
    };
  }

  async findOne(): Promise<ProfileModel> {
    const profile = await this.prisma.profile.findFirst({
      orderBy: { slug: 'asc' },
    });

    if (!profile) {
      throw new NotFoundException('Profile not found');
    }

    return {
      id: profile.id,
      slug: profile.slug,
      name: profile.name,
      description: profile.description,
    };
  }
}
