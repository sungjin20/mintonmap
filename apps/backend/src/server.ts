import "dotenv/config";
import cors from "cors";
import express from "express";
import { ZodError } from "zod";
import { courtReportsRouter } from "./routes/courtReports.js";
import { courtsRouter } from "./routes/courts.js";

const app = express();
const port = Number(process.env.PORT ?? 4000);
const corsOrigin = process.env.CORS_ORIGIN ?? "http://localhost:3000";

app.use(cors({ origin: corsOrigin }));
app.use(express.json({ limit: "1mb" }));

app.get("/health", (_req, res) => {
  res.json({ ok: true, service: "mintonmap-backend" });
});

app.use("/api/courts", courtsRouter);
app.use("/api/court-reports", courtReportsRouter);

app.use((error: unknown, _req: express.Request, res: express.Response, _next: express.NextFunction) => {
  if (
    typeof error === "object" &&
    error !== null &&
    "type" in error &&
    error.type === "entity.parse.failed"
  ) {
    res.status(400).json({ message: "invalid JSON body" });
    return;
  }

  if (error instanceof ZodError) {
    res.status(500).json({
      message: "court data validation failed",
      issues: error.issues
    });
    return;
  }

  console.error(error);
  res.status(500).json({ message: "internal server error" });
});

app.listen(port, () => {
  console.log(`mintonmap backend listening on http://localhost:${port}`);
});
