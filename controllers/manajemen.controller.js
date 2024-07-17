import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export const getManajemen = async (req, res) => {
  try {
    const response = await prisma.manajemen.findMany({
      where: { userId: req.userId },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createManajemen = async (req, res) => {
  const { pricing } = req.body;

  try {
    const response = await prisma.manajemen.create({
      data: {
        pricing,
        User: {
          connect: {
            id: req.userId,
          },
        },
      },
    });
    res.status(200).json({ msg: "Manajemen created successfully" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
