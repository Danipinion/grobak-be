/*
  Warnings:

  - You are about to drop the column `usersId` on the `ChartData` table. All the data in the column will be lost.
  - You are about to drop the column `usersId` on the `Manajemen` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "ChartData" DROP CONSTRAINT "ChartData_usersId_fkey";

-- DropForeignKey
ALTER TABLE "Manajemen" DROP CONSTRAINT "Manajemen_usersId_fkey";

-- AlterTable
ALTER TABLE "ChartData" DROP COLUMN "usersId",
ADD COLUMN     "userId" TEXT;

-- AlterTable
ALTER TABLE "Manajemen" DROP COLUMN "usersId",
ADD COLUMN     "userId" TEXT;

-- AddForeignKey
ALTER TABLE "ChartData" ADD CONSTRAINT "ChartData_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Manajemen" ADD CONSTRAINT "Manajemen_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
