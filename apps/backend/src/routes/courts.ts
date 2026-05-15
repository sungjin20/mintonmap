import { Router } from "express";
import { isCourtRegion, listCourts } from "../repositories/courtRepository.js";

export const courtsRouter = Router();

courtsRouter.get("/", async (req, res, next) => {
  try {
    const region = req.query.region;
    const q = typeof req.query.q === "string" ? req.query.q : undefined;

    if (region !== undefined && !isCourtRegion(region)) {
      res.status(400).json({
        message: "region must be one of: seoul, gyeonggi"
      });
      return;
    }

    const courts = await listCourts({ region, q });
    res.json({ courts });
  } catch (error) {
    next(error);
  }
});
