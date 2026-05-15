import { randomUUID } from "node:crypto";
import { Router } from "express";
import { z } from "zod";

const courtReportSchema = z.object({
  courtId: z.string().min(1).optional(),
  reportType: z.enum(["new_court", "update", "closed", "other"]).default("new_court"),
  name: z.string().min(1).max(120).optional(),
  address: z.string().min(1).max(255).optional(),
  phone: z.string().max(40).optional(),
  courtCount: z.number().int().nonnegative().optional(),
  message: z.string().min(5).max(2000),
  reporterEmail: z.string().email().optional()
});

export const courtReportsRouter = Router();

courtReportsRouter.post("/", (req, res) => {
  const parsed = courtReportSchema.safeParse(req.body);

  if (!parsed.success) {
    res.status(400).json({
      message: "invalid report payload",
      issues: parsed.error.issues
    });
    return;
  }

  res.status(202).json({
    report: {
      id: randomUUID(),
      status: "pending",
      submittedAt: new Date().toISOString(),
      ...parsed.data
    },
    next: "Persist this payload into court_reports when PostgreSQL/MySQL is connected."
  });
});
