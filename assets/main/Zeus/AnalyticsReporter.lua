local classes = require("classes")
bindModule("Analytics")

local AnalyticsReporter = classes.class()

AnalyticsReporter.BI_LEVELS = {
        DEBUG = 20,
        USAGE = 15,
        KPI = 10,
        ERROR = 5
    }

function AnalyticsReporter:init(params)
    self.feature = params.feature
    self.level = params.biLevel
end

function AnalyticsReporter:biDebug(context, action, params)
    self:reportBi(AnalyticsReporter.BI_LEVELS.DEBUG, context, action, params)
end

function AnalyticsReporter:biUsage(context, action, params)
    self:reportBi(AnalyticsReporter.BI_LEVELS.USAGE, context, action, params)
end

function AnalyticsReporter:biKpi(context, action, params)
    self:reportBi(AnalyticsReporter.BI_LEVELS.KPI, context, action, params)
end

function AnalyticsReporter:biError(action, params)
    self:reportBi(AnalyticsReporter.BI_LEVELS.KPI, "error", action, params)
end

function AnalyticsReporter:reportBi(level, context, action, params)
    if level > self.level then
        return
    end
    Analytics.reportAnalytics(self.feature, context, action, params)
end

return AnalyticsReporter