import { Injectable } from '@nestjs/common';

import { PrismaService } from '../prisma/prisma.service.ts';
import { ProfileLinkModel } from './profile-link.model.ts';

@Injectable()
export class ProfileLinkService {
  constructor(private readonly prisma: PrismaService) {}

  async findByProfileId(profileId: string): Promise<ProfileLinkModel[]> {
    const links = await this.prisma.profileLink.findMany({
      where: { profileId },
      orderBy: [{ sortOrder: 'asc' }, { label: 'asc' }],
    });

    return links.map((link) => ({
      id: link.id,
      label: link.label,
      url: link.url,
    }));
  }
}
