-- AlterTable
ALTER TABLE "Users" ADD COLUMN     "lokasi" TEXT;

-- CreateTable
CREATE TABLE "ChartData" (
    "id" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "pelanggan" INTEGER NOT NULL,
    "usersId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ChartData_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Manajemen" (
    "id" TEXT NOT NULL,
    "pricing" INTEGER NOT NULL,
    "tanggal" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "usersId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Manajemen_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ChartData" ADD CONSTRAINT "ChartData_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES "Users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Manajemen" ADD CONSTRAINT "Manajemen_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES "Users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
