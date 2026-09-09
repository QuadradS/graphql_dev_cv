import { Injectable, NotFoundException } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service.ts';
import { ProfileModel } from './profile.model.ts';

@Injectable()
export class ProfileService {
  constructor(private readonly prisma: PrismaService) {}

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
