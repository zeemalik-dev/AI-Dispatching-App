const admin = require("firebase-admin/app");
admin.initializeApp();

const createAgent = require("./create_agent.js");
exports.createAgent = createAgent.createAgent;
