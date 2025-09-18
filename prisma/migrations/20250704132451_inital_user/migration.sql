-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "googlemail" TEXT,
    "extra" TEXT,
    "contact" BIGINT DEFAULT 99999,
    "lastname" TEXT,
    "password" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Dealers" (
    "id" TEXT NOT NULL,
    "idd" TEXT,
    "name" TEXT,
    "dealeremail" TEXT,
    "dealerid" TEXT,
    "email" TEXT,
    "phonenum" TEXT,
    "verified" BOOLEAN,
    "address" TEXT,
    "category" TEXT,
    "transactionWorth" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Dealers_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE INDEX "Dealers_dealerid_idx" ON "Dealers"("dealerid");

-- AddForeignKey
ALTER TABLE "Dealers" ADD CONSTRAINT "Dealers_dealerid_fkey" FOREIGN KEY ("dealerid") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
