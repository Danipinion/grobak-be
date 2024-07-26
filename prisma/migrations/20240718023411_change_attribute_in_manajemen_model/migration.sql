/*
  Warnings:

  - You are about to drop the column `pricing` on the `Manajemen` table. All the data in the column will be lost.
  - Added the required column `pemasukan` to the `Manajemen` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pengeluaran` to the `Manajemen` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Manajemen" DROP COLUMN "pricing",
ADD COLUMN     "pemasukan" INTEGER NOT NULL,
ADD COLUMN     "pengeluaran" INTEGER NOT NULL;
